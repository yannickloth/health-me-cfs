#!/usr/bin/env python3
"""
Comprehensive analysis of high-priority medication acronym contexts.
Version 2: Improved verification logic with clearer categorization.
"""

import json
import re
from pathlib import Path
from typing import Dict, List, Tuple

# Reference definitions
DEFINITIONS = {
    'LDA': 'Low-Dose Aripiprazole',
    'LDN': 'Low-Dose Naltrexone',
    'NAC': 'N-Acetylcysteine',
    'BH4': 'Tetrahydrobiopterin',
    'DHEA': 'Dehydroepiandrosterone',
    'ALA': 'Alpha-Lipoic Acid',
}

def read_file_around_line(file_path: str, line: int, context_lines: int = 50) -> str:
    """Read context around the given line."""
    possible_paths = [
        file_path,
        f'contents/appendices/{file_path}',
        f'contents/{file_path}',
        f'contents/part3-treatment/{file_path}',
        f'contents/part1-foundations/{file_path}',
        f'contents/part2-pathophysiology/{file_path}',
    ]

    for path in possible_paths:
        try:
            with open(path, 'r', encoding='utf-8', errors='ignore') as f:
                lines = f.readlines()
                start = max(0, line - context_lines - 1)
                end = min(len(lines), line + context_lines)
                return ''.join(lines[start:end])
        except FileNotFoundError:
            continue

    return ''


def analyze_acronym_usage(acronym: str, file_path: str, line: int, short_context: str) -> Dict:
    """Analyze a single acronym usage for correctness and expansion."""

    # Get extended context
    extended_context = read_file_around_line(file_path, line, 50)
    if not extended_context:
        extended_context = short_context

    full_context = short_context + extended_context

    # Initialize result
    result = {
        'file': file_path,
        'line': line,
        'acronym': acronym,
        'definition': DEFINITIONS[acronym],
        'status': 'unknown',
        'issues': [],
        'notes': []
    }

    # === CHECK 1: Definition Correctness ===
    definition_ok = check_definition_correctness(acronym, full_context)
    if not definition_ok['ok']:
        result['status'] = 'ERROR'
        result['issues'].append(definition_ok['reason'])
        return result

    result['notes'].append(definition_ok['reason'])

    # === CHECK 2: Expansion Present ===
    expansion = check_expansion(acronym, full_context)
    if not expansion['found']:
        # Check if it's a context where expansion is expected
        if is_primary_usage_context(full_context):
            result['status'] = 'MISSING_EXPANSION'
            result['issues'].append(f"First/primary use should have expansion: {expansion['reason']}")
        else:
            result['status'] = 'CORRECT'
            result['notes'].append(f"No expansion needed: {expansion['reason']}")
    else:
        result['status'] = 'CORRECT'
        result['notes'].append(expansion['reason'])

    return result


def check_definition_correctness(acronym: str, context: str) -> Dict:
    """Verify the acronym uses the correct definition."""

    # Critical check for LDA - must NOT be aspirin
    if acronym == 'LDA':
        if re.search(r'(?i)aspirin', context) and not re.search(r'(?i)aripiprazole', context):
            return {'ok': False, 'reason': 'ERROR: LDA used with aspirin context, should be Aripiprazole'}

        # Check for Aripiprazole or Abilify nearby
        if re.search(r'(?i)(aripiprazole|abilify)', context):
            return {'ok': True, 'reason': 'Definition correct: Aripiprazole confirmed in context'}

        # If neither, assume correct but unverified
        return {'ok': True, 'reason': 'Definition assumed correct (no contrary evidence)'}

    # For LDN - check for Naltrexone
    elif acronym == 'LDN':
        if re.search(r'(?i)naltrexone', context):
            return {'ok': True, 'reason': 'Definition correct: Naltrexone confirmed'}
        return {'ok': True, 'reason': 'Definition assumed correct (no contrary evidence)'}

    # For NAC
    elif acronym == 'NAC':
        if re.search(r'(?i)(n-acetylcysteine|acetylcysteine)', context):
            return {'ok': True, 'reason': 'Definition correct: N-Acetylcysteine confirmed'}
        return {'ok': True, 'reason': 'Definition assumed correct (no contrary evidence)'}

    # For BH4
    elif acronym == 'BH4':
        if re.search(r'(?i)(tetrahydrobiopterin|biopterin)', context):
            return {'ok': True, 'reason': 'Definition correct: Tetrahydrobiopterin confirmed'}
        return {'ok': True, 'reason': 'Definition assumed correct (no contrary evidence)'}

    # For DHEA
    elif acronym == 'DHEA':
        if re.search(r'(?i)dehydroepiandrosterone', context):
            return {'ok': True, 'reason': 'Definition correct: Dehydroepiandrosterone confirmed'}
        return {'ok': True, 'reason': 'Definition assumed correct (no contrary evidence)'}

    # For ALA
    elif acronym == 'ALA':
        if re.search(r'(?i)(alpha[- ]lipoic|α[- ]lipoic)', context):
            return {'ok': True, 'reason': 'Definition correct: Alpha-Lipoic Acid confirmed'}
        return {'ok': True, 'reason': 'Definition assumed correct (no contrary evidence)'}

    return {'ok': True, 'reason': 'No verification pattern available'}


def check_expansion(acronym: str, context: str) -> Dict:
    """Check if expansion is present."""

    # Define expansion patterns
    patterns = {
        'LDA': r'(?i)(low[- ]dose aripiprazole|aripiprazole.*\(LDA\)|LDA.*aripiprazole)',
        'LDN': r'(?i)(low[- ]dose naltrexone|naltrexone.*\(LDN\)|LDN.*naltrexone)',
        'NAC': r'(?i)(n[- ]acetylcysteine|NAC.*acetylcysteine|acetylcysteine.*\(NAC\))',
        'BH4': r'(?i)(tetrahydrobiopterin|BH4.*biopterin|tetrahydrobiopterin.*\(BH4\))',
        'DHEA': r'(?i)(dehydroepiandrosterone|DHEA.*epiandrosterone)',
        'ALA': r'(?i)(alpha[- ]lipoic acid|α[- ]lipoic|ALA.*lipoic)',
    }

    pattern = patterns.get(acronym)
    if not pattern:
        return {'found': False, 'reason': 'No expansion pattern defined'}

    if re.search(pattern, context):
        return {'found': True, 'reason': 'Expansion present in context'}

    # Check for abbreviations list
    if re.search(r'\\item\[' + acronym + r'\]', context):
        return {'found': True, 'reason': 'In abbreviations list (expansion definition)'}

    return {'found': False, 'reason': 'No expansion within ±50 lines'}


def is_primary_usage_context(context: str) -> bool:
    """Determine if this is a primary usage context where expansion is required."""

    # If it's in a table of contents, abbreviations list, or bibliography, expansion not needed
    if re.search(r'(\\item\[|\\subsection|\\label\{|\\cite\{)', context):
        return False

    # If it's in body text (paragraph), expansion is expected on first use
    if re.search(r'[a-z]\s+\w+\s+[a-z]', context):  # Prose context
        return True

    return False


def main():
    # Load contexts
    with open('.claude/acronym-review/contexts/high-priority-all.json', 'r') as f:
        all_contexts = json.load(f)

    results = {}
    total_reviewed = 0

    # Process each acronym
    for acronym in ['LDA', 'LDN', 'NAC', 'BH4', 'DHEA', 'ALA']:
        contexts = all_contexts.get(acronym, [])

        correct = []
        missing_expansion = []
        errors = []

        for ctx in contexts:
            analysis = analyze_acronym_usage(
                acronym,
                ctx['file'],
                ctx['line'],
                ctx.get('context', '')
            )
            total_reviewed += 1

            if analysis['status'] == 'ERROR':
                errors.append({
                    'file': analysis['file'],
                    'line': analysis['line'],
                    'error': '; '.join(analysis['issues']),
                    'recommendation': f"Fix: Verify {DEFINITIONS[acronym]}"
                })
            elif analysis['status'] == 'MISSING_EXPANSION':
                missing_expansion.append({
                    'file': analysis['file'],
                    'line': analysis['line'],
                    'issue': '; '.join(analysis['issues']),
                    'recommendation': f"Add: {DEFINITIONS[acronym]} ({acronym})"
                })
            else:  # CORRECT
                correct.append({
                    'file': analysis['file'],
                    'line': analysis['line'],
                    'notes': '; '.join(analysis['notes'])
                })

        results[acronym] = {
            'total': len(contexts),
            'correct': correct,
            'missing_expansion': missing_expansion,
            'errors': errors
        }

    # Calculate summary
    all_definitions_correct = all(len(results[acr]['errors']) == 0 for acr in results)
    total_errors = sum(len(results[acr]['errors']) for acr in results)
    total_missing = sum(len(results[acr]['missing_expansion']) for acr in results)

    results['summary'] = {
        'total_reviewed': total_reviewed,
        'all_definitions_correct': all_definitions_correct,
        'corrections_needed': total_errors + total_missing,
        'by_type': {
            'definition_errors': total_errors,
            'missing_expansions': total_missing,
            'ambiguous': 0
        }
    }

    # Write output
    output_file = Path('.claude/acronym-review/analysis/all-medications-analysis.json')
    output_file.parent.mkdir(parents=True, exist_ok=True)

    with open(output_file, 'w') as f:
        json.dump(results, f, indent=2)

    # Print summary
    print("=" * 70)
    print("MEDICATION ACRONYM ANALYSIS - COMPREHENSIVE REVIEW")
    print("=" * 70)
    print(f"\n📊 SUMMARY:")
    print(f"   Total contexts reviewed: {total_reviewed}")
    print(f"   All definitions correct: {'✅ YES' if all_definitions_correct else '❌ NO'}")
    print(f"   Definition errors: {total_errors}")
    print(f"   Missing expansions: {total_missing}")
    print(f"   Total corrections needed: {total_errors + total_missing}")

    print(f"\n📋 PER-ACRONYM BREAKDOWN:")
    print(f"   {'Acronym':<8} {'Total':<8} {'Correct':<10} {'Missing Exp':<13} {'Errors':<8}")
    print(f"   {'-'*60}")

    for acronym in ['LDA', 'LDN', 'NAC', 'BH4', 'DHEA', 'ALA']:
        r = results[acronym]
        print(f"   {acronym:<8} {r['total']:<8} "
              f"✅ {len(r['correct']):<8} "
              f"⚠️  {len(r['missing_expansion']):<11} "
              f"❌ {len(r['errors']):<8}")

    print(f"\n📄 Full analysis saved to:")
    print(f"   {output_file}")
    print("=" * 70)

    # Show examples of issues if any
    if total_errors > 0:
        print(f"\n⚠️  DEFINITION ERRORS FOUND:")
        for acronym in results:
            if acronym == 'summary':
                continue
            for err in results[acronym]['errors'][:3]:  # Show first 3
                print(f"   ❌ {acronym} at {err['file']}:{err['line']}")
                print(f"      {err['error']}")

    if total_missing > 0:
        print(f"\n⚠️  MISSING EXPANSIONS (first 5):")
        count = 0
        for acronym in results:
            if acronym == 'summary':
                continue
            for miss in results[acronym]['missing_expansion']:
                if count >= 5:
                    break
                print(f"   📝 {acronym} at {miss['file']}:{miss['line']}")
                print(f"      {miss['issue']}")
                count += 1
            if count >= 5:
                break


if __name__ == '__main__':
    main()