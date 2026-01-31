#!/usr/bin/env python3
"""
Analyze all high-priority medication acronym contexts for correctness and expansion issues.
"""

import json
import re
from pathlib import Path
from typing import Dict, List, Tuple

# Reference definitions from acronym-definitions.yaml
DEFINITIONS = {
    'LDA': 'Low-Dose Aripiprazole',
    'LDN': 'Low-Dose Naltrexone',
    'NAC': 'N-Acetylcysteine',
    'BH4': 'Tetrahydrobiopterin',
    'DHEA': 'Dehydroepiandrosterone',
    'ALA': 'Alpha-Lipoic Acid',
}

# Context verification patterns
VERIFICATION_PATTERNS = {
    'LDA': r'(?i)(aripiprazole|abilify)',
    'LDN': r'(?i)(naltrexone)',
    'NAC': r'(?i)(n-acetylcysteine|acetylcysteine)',
    'BH4': r'(?i)(tetrahydrobiopterin)',
    'DHEA': r'(?i)(dehydroepiandrosterone)',
    'ALA': r'(?i)(alpha[- ]lipoic|α[- ]lipoic)',
}

# Expansion patterns (abbreviated forms with expansion)
EXPANSION_PATTERNS = {
    'LDA': r'(?i)(low[- ]dose aripiprazole|aripiprazole.*\(LDA\)|LDA.*aripiprazole)',
    'LDN': r'(?i)(low[- ]dose naltrexone|naltrexone.*\(LDN\)|LDN.*naltrexone)',
    'NAC': r'(?i)(n[- ]acetylcysteine|NAC.*acetylcysteine|acetylcysteine.*\(NAC\))',
    'BH4': r'(?i)(tetrahydrobiopterin|BH4.*biopterin|tetrahydrobiopterin.*\(BH4\))',
    'DHEA': r'(?i)(dehydroepiandrosterone|DHEA.*epiandrosterone)',
    'ALA': r'(?i)(alpha[- ]lipoic acid|α[- ]lipoic|ALA.*lipoic)',
}


def read_file_context(file_path: str, line: int, context_lines: int = 50) -> Tuple[str, str]:
    """Read context around the given line from a file."""
    try:
        # Try multiple possible paths
        possible_paths = [
            file_path,
            f'contents/appendices/{file_path}',
            f'contents/{file_path}',
        ]

        content = None
        for path in possible_paths:
            try:
                with open(path, 'r', encoding='utf-8', errors='ignore') as f:
                    content = f.readlines()
                    break
            except FileNotFoundError:
                continue

        if content is None:
            return '', ''

        lines = content

        start = max(0, line - context_lines - 1)
        end = min(len(lines), line + context_lines)
        before = ''.join(lines[start:line-1])
        after = ''.join(lines[line:end])

        return before, after
    except Exception as e:
        return '', ''


def check_definition_correctness(acronym: str, context: str) -> Tuple[bool, str]:
    """Verify the acronym is used with the correct definition."""
    pattern = VERIFICATION_PATTERNS.get(acronym)
    if not pattern:
        return True, "No verification pattern defined"

    # Special case for LDA - ensure it's NOT aspirin
    if acronym == 'LDA':
        if re.search(r'(?i)aspirin', context):
            return False, "WRONG: LDA used in context with 'aspirin' - should be Aripiprazole"

    if re.search(pattern, context):
        return True, "Correct definition found in context"
    else:
        return False, f"Missing verification keyword for {DEFINITIONS[acronym]}"


def check_expansion_present(acronym: str, context: str) -> Tuple[bool, str]:
    """Check if expansion is present in the context."""
    pattern = EXPANSION_PATTERNS.get(acronym)
    if not pattern:
        return False, "No expansion pattern defined"

    if re.search(pattern, context):
        return True, "Expansion found in context"
    else:
        # Check if it's in an abbreviations list (acceptable without expansion)
        if re.search(r'\\item\[', context):
            return True, "In abbreviations list (expansion acceptable to skip)"
        return False, "No expansion found within ±50 lines"


def analyze_context(acronym: str, file_path: str, line: int, provided_context: str) -> Dict:
    """Analyze a single acronym context."""

    # Read extended context from file
    before_context, after_context = read_file_context(file_path, line, 50)
    full_context = before_context + provided_context + after_context

    # Check definition correctness
    definition_ok, def_reason = check_definition_correctness(acronym, full_context)

    # Check expansion presence
    expansion_ok, exp_reason = check_expansion_present(acronym, full_context)

    # Categorize
    if definition_ok and expansion_ok:
        category = 'correct'
    elif not definition_ok:
        category = 'errors'
    elif not expansion_ok:
        category = 'missing_expansion'
    else:
        category = 'correct'

    return {
        'file': file_path,
        'line': line,
        'category': category,
        'definition_correct': definition_ok,
        'definition_reason': def_reason,
        'expansion_present': expansion_ok,
        'expansion_reason': exp_reason,
        'notes': f"{DEFINITIONS[acronym]}"
    }


def main():
    # Load contexts
    contexts_file = Path('.claude/acronym-review/contexts/high-priority-all.json')
    with open(contexts_file, 'r') as f:
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
            analysis = analyze_context(
                acronym,
                ctx['file'],
                ctx['line'],
                ctx.get('context', '')
            )
            total_reviewed += 1

            if analysis['category'] == 'correct':
                correct.append({
                    'file': analysis['file'],
                    'line': analysis['line'],
                    'notes': f"{analysis['definition_reason']}; {analysis['expansion_reason']}"
                })
            elif analysis['category'] == 'missing_expansion':
                missing_expansion.append({
                    'file': analysis['file'],
                    'line': analysis['line'],
                    'issue': analysis['expansion_reason'],
                    'recommendation': f"Add expansion: {DEFINITIONS[acronym]} (acronym)"
                })
            elif analysis['category'] == 'errors':
                errors.append({
                    'file': analysis['file'],
                    'line': analysis['line'],
                    'error': analysis['definition_reason'],
                    'recommendation': f"Verify this refers to {DEFINITIONS[acronym]}"
                })

        results[acronym] = {
            'total': len(contexts),
            'correct': correct,
            'missing_expansion': missing_expansion,
            'errors': errors
        }

    # Calculate summary
    all_definitions_correct = all(
        len(results[acr]['errors']) == 0
        for acr in results
    )

    total_errors = sum(len(results[acr]['errors']) for acr in results)
    total_missing = sum(len(results[acr]['missing_expansion']) for acr in results)

    results['summary'] = {
        'total_reviewed': total_reviewed,
        'all_definitions_correct': all_definitions_correct,
        'corrections_needed': total_errors + total_missing,
        'by_type': {
            'definition_errors': total_errors,
            'missing_expansions': total_missing,
            'ambiguous': 0  # Will be counted separately if found
        }
    }

    # Write output
    output_file = Path('.claude/acronym-review/analysis/all-medications-analysis.json')
    output_file.parent.mkdir(parents=True, exist_ok=True)

    with open(output_file, 'w') as f:
        json.dump(results, f, indent=2)

    print(f"✅ Analysis complete!")
    print(f"   Total contexts reviewed: {total_reviewed}")
    print(f"   Definition errors: {total_errors}")
    print(f"   Missing expansions: {total_missing}")
    print(f"   All definitions correct: {all_definitions_correct}")
    print(f"\n📄 Output: {output_file}")

    # Print per-acronym summary
    print(f"\n📊 Per-acronym breakdown:")
    for acronym in ['LDA', 'LDN', 'NAC', 'BH4', 'DHEA', 'ALA']:
        r = results[acronym]
        print(f"   {acronym}: {r['total']} total | "
              f"✅ {len(r['correct'])} correct | "
              f"⚠️  {len(r['missing_expansion'])} missing expansion | "
              f"❌ {len(r['errors'])} errors")


if __name__ == '__main__':
    main()