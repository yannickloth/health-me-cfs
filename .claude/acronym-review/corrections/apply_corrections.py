#!/usr/bin/env python3
"""
Apply acronym expansion corrections from CORRECTION-PLAN.json

Usage:
    python apply_corrections.py [--dry-run] [--file FILE]

Options:
    --dry-run    Show what would be changed without making modifications
    --file FILE  Apply corrections to specific file only
"""

import json
import sys
import os
from pathlib import Path
from typing import Dict, List, Tuple

# Base directory
BASE_DIR = Path("/home/nicky/code/health-me-cfs")
PLAN_FILE = BASE_DIR / ".claude/acronym-review/corrections/CORRECTION-PLAN.json"


def load_plan() -> Dict:
    """Load the correction plan JSON"""
    with open(PLAN_FILE, 'r') as f:
        return json.load(f)


def apply_correction(filepath: Path, correction: Dict, dry_run: bool = False) -> Tuple[bool, str]:
    """
    Apply a single correction to a file

    Returns:
        (success: bool, message: str)
    """
    try:
        # Read file
        with open(filepath, 'r') as f:
            content = f.read()

        old_pattern = correction['old_pattern']
        new_pattern = correction['new_pattern']

        # Check if pattern exists
        if old_pattern not in content:
            return False, f"Pattern not found: {old_pattern[:50]}..."

        # Count occurrences
        count = content.count(old_pattern)
        if count > 1:
            return False, f"Pattern appears {count} times (expected 1): {old_pattern[:50]}..."

        # Replace
        new_content = content.replace(old_pattern, new_pattern)

        if dry_run:
            return True, f"[DRY RUN] Would replace at line {correction['line']}"

        # Write back
        with open(filepath, 'w') as f:
            f.write(new_content)

        return True, f"✓ Corrected line {correction['line']}: {correction['acronym']}"

    except Exception as e:
        return False, f"Error: {str(e)}"


def verify_correction(filepath: Path, correction: Dict) -> Tuple[bool, str]:
    """
    Verify that a correction was applied successfully

    Returns:
        (success: bool, message: str)
    """
    try:
        with open(filepath, 'r') as f:
            content = f.read()

        new_pattern = correction['new_pattern']

        if new_pattern in content:
            return True, f"✓ Verified: {correction['acronym']} expansion present"
        else:
            return False, f"✗ Verification failed: expansion not found"

    except Exception as e:
        return False, f"Error during verification: {str(e)}"


def process_file(file_rel_path: str, file_data: Dict, dry_run: bool = False) -> Dict[str, int]:
    """
    Process all corrections for a single file

    Returns:
        Stats dict with success/failure counts
    """
    filepath = BASE_DIR / "contents" / file_rel_path

    print(f"\n{'='*80}")
    print(f"File: {file_rel_path}")
    print(f"Corrections: {file_data['acronym_count']}")
    print(f"Priority: {[item for item in plan['execution_order'] if item['file'] == file_rel_path][0]['priority']}")
    print(f"{'='*80}")

    stats = {'success': 0, 'failed': 0, 'total': file_data['acronym_count']}

    for i, correction in enumerate(file_data['corrections'], 1):
        print(f"\n[{i}/{stats['total']}] Line {correction['line']}: {correction['acronym']}")
        print(f"  Old: {correction['old_pattern'][:70]}...")
        print(f"  New: {correction['new_pattern'][:70]}...")

        # Apply correction
        success, message = apply_correction(filepath, correction, dry_run)
        print(f"  {message}")

        if success:
            stats['success'] += 1

            # Verify if not dry run
            if not dry_run:
                verify_success, verify_msg = verify_correction(filepath, correction)
                print(f"  {verify_msg}")

                if not verify_success:
                    stats['failed'] += 1
                    stats['success'] -= 1
        else:
            stats['failed'] += 1

    return stats


def main():
    """Main execution"""
    # Parse arguments
    dry_run = '--dry-run' in sys.argv
    specific_file = None

    if '--file' in sys.argv:
        idx = sys.argv.index('--file')
        if idx + 1 < len(sys.argv):
            specific_file = sys.argv[idx + 1]

    # Load plan
    global plan
    plan = load_plan()

    print(f"\n{'='*80}")
    print(f"ACRONYM EXPANSION CORRECTION PLAN")
    print(f"{'='*80}")
    print(f"Total corrections: {plan['total_corrections']}")
    print(f"Files affected: {len(plan['by_file'])}")
    print(f"Mode: {'DRY RUN' if dry_run else 'LIVE'}")
    if specific_file:
        print(f"Target: {specific_file} only")
    print(f"{'='*80}")

    # Process files
    total_stats = {'success': 0, 'failed': 0, 'total': 0}

    for file_rel_path, file_data in plan['by_file'].items():
        # Skip if specific file requested and this isn't it
        if specific_file and file_rel_path != specific_file:
            continue

        stats = process_file(file_rel_path, file_data, dry_run)

        total_stats['success'] += stats['success']
        total_stats['failed'] += stats['failed']
        total_stats['total'] += stats['total']

    # Summary
    print(f"\n{'='*80}")
    print(f"SUMMARY")
    print(f"{'='*80}")
    print(f"Total corrections: {total_stats['total']}")
    print(f"Successful: {total_stats['success']}")
    print(f"Failed: {total_stats['failed']}")
    print(f"Success rate: {total_stats['success']/total_stats['total']*100:.1f}%")

    if dry_run:
        print(f"\n⚠ DRY RUN MODE - No changes were made")
        print(f"Run without --dry-run to apply corrections")
    else:
        print(f"\n✓ Corrections applied")
        print(f"\nNext steps:")
        print(f"1. Verify LaTeX compiles: cd {BASE_DIR} && nix build")
        print(f"2. Run acronym analysis again to confirm 100% compliance")
        print(f"3. Review changes: git diff")
        print(f"4. Commit: git add . && git commit -m 'fix: Add missing acronym expansions (LDN, NAC, BH4, DHEA)'")

    print(f"{'='*80}\n")

    # Exit code
    return 0 if total_stats['failed'] == 0 else 1


if __name__ == '__main__':
    sys.exit(main())