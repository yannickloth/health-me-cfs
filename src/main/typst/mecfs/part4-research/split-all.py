#!/usr/bin/env python3
"""Split all part4 chapter files into canonical content hierarchy. v2"""

import re, os, sys

BASE = '/home/nicky/code/health-me-cfs/src/main/typst/mecfs/part4-research'

CLAIM_DIRS = {
    'limitation': 'limitations',
    'hypothesis': 'hypotheses',
    'speculation': 'speculations',
    'open-question': 'open-questions',
    'achievement': 'achievements',
    'warning': 'warnings',
    'proposal': 'proposals',
    'observation': 'observations',
    'prediction': 'predictions',
    'clinical-finding': 'clinical-findings',
    'requirement': 'requirements',
    'recommendation': 'recommendations',
    'protocol': 'protocols',
    'direction': 'directions',
    'model-insight': 'model-insights',
}

CLAIM_ENVS = '|'.join(CLAIM_DIRS.keys())

def slugify(text, maxlen=50):
    s = text.lower().strip()
    s = re.sub(r'[^a-z0-9\s-]', '', s)
    s = re.sub(r'[\s]+', '-', s).strip('-')
    return s[:maxlen].rstrip('-') if len(s) > maxlen else s or 'unnamed'

def is_claim_start(line):
    m = re.match(r'^\s*#(' + CLAIM_ENVS + r')\s*[(\[]', line)
    return m.group(1) if m else None

def find_claim_end(lines, start_idx):
    paren, bracket = 0, 0
    found_content = False
    i = start_idx
    while i < len(lines):
        for c in lines[i]:
            if c == '(': paren += 1
            elif c == ')': paren -= 1
            elif c == '[': bracket += 1; found_content = True
            elif c == ']': bracket -= 1
        if found_content and bracket <= 0 and paren <= 0:
            return i + 1
        i += 1
    return i

def extract_label(text):
    m = re.search(r'\]\s*<\s*([a-z][-a-z0-9:]*)\s*>\s*$', text.strip(), re.MULTILINE)
    if m: return m.group(1)
    lines = text.strip().split('\n')
    for line in reversed(lines):
        m2 = re.match(r'\s*<\s*([a-z][-a-z0-9:]*)\s*>\s*$', line)
        if m2: return m2.group(1)
    return ''

def get_heading_label(lines, idx):
    if idx+1 < len(lines):
        m = re.match(r'^\s*<([a-z][-a-z0-9:]*)>\s*$', lines[idx+1])
        if m: return m.group(1)
    return ''

def collect_prose_and_claims(lines, start, end, claims, claim_info):
    """Collect prose and find claims in range [start, end)."""
    prose, claim_starts = [], []
    for pidx in range(start, end):
        l = lines[pidx]
        if l.strip():
            cm = None
            for cs, ce, et, ct in claims:
                if cs <= pidx < ce:
                    cm = cs; break
            if cm is not None:
                if cm not in claim_starts: claim_starts.append(cm)
            else:
                prose.append(l)
    return prose, claim_starts

def process_chapter(chapter_name):
    src = os.path.join(BASE, f'{chapter_name}.typ')
    ch_dir = os.path.join(BASE, chapter_name)
    if not os.path.exists(src):
        return print(f"  SKIP: {src} not found")
    
    os.makedirs(ch_dir, exist_ok=True)
    for sd in set(CLAIM_DIRS.values()):
        os.makedirs(os.path.join(ch_dir, sd), exist_ok=True)
    
    with open(src) as f: content = f.read()
    lines = content.split('\n')
    
    # Extract claims
    claims = []
    i = 0
    while i < len(lines):
        et = is_claim_start(lines[i])
        if et:
            end = find_claim_end(lines, i)
            claims.append((i, end, et, '\n'.join(lines[i:end])))
            i = end
        else:
            i += 1
    
    # Write claim files + blank claim lines in lines array
    claim_info = {}
    for cs, ce, et, ct in claims:
        label = extract_label(ct)
        subdir = CLAIM_DIRS.get(et, 'claims')
        claim_dir = os.path.join(ch_dir, subdir)
        title_m = re.search(r'title:\s*\[([^\]]*)\]', ct)
        title = title_m.group(1)[:40] if title_m else ''
        fn = f'{et}-{label}.typ' if label else f'{et}-{slugify(title)}.typ'
        fpath = os.path.join(claim_dir, fn)
        ctr = 1
        while os.path.exists(fpath):
            fpath = os.path.join(claim_dir, f'{fn[:-4]}-{ctr}.typ'); ctr += 1
        with open(fpath, 'w') as cf:
            cf.write('#import "../../../../shared/environments.typ": *\n\n' + ct + '\n')
        claim_info[cs] = fpath
        for idx in range(cs, ce): lines[idx] = ''
    
    # Parse headings
    headings = []  # (idx, level, title_text, label)
    for i, line in enumerate(lines):
        m = re.match(r'^(={1,4})\s+(.+?)\s*$', line)
        if m:
            level = len(m.group(1))
            title = m.group(2).strip()
            label = get_heading_label(lines, i)
            headings.append((i, level, title, label))
    
    if not headings:
        return print(f"  No headings in {chapter_name}")
    
    ch_heading = headings[0]
    ch_label = ch_heading[3]
    ch_idx, ch_level = ch_heading[0], ch_heading[1]
    
    # Build hierarchy: find next heading at same or lower level
    def next_heading(idx, level):
        for h in headings:
            if h[0] > idx and h[1] <= level:
                return h[0]
        return len(lines)
    
    # Get h2 sections
    h2_secs = []
    for i, (idx, level, title, label) in enumerate(headings):
        if level != 2: continue
        end = next_heading(idx, 2)
        h3_secs = []
        for j, (jdx, jlevel, jtitle, jlabel) in enumerate(headings):
            if jlevel != 3 or jdx <= idx or jdx >= end: continue
            jend = next_heading(jdx, 3)
            h4_secs = []
            for k, (kdx, klevel, ktitle, klabel) in enumerate(headings):
                if klevel != 4 or kdx <= jdx or kdx >= jend: continue
                kend = next_heading(kdx, 4)
                h4_secs.append((kdx, kend, ktitle, klabel))
            h3_secs.append((jdx, jend, jtitle, jlabel, h4_secs))
        h2_secs.append((idx, end, title, label, h3_secs))
    
    # Intro prose
    intro_end = h2_secs[0][0] if h2_secs else len(lines)
    intro_start = ch_idx + 1
    if ch_label: intro_start += 1
    intro_prose, _ = collect_prose_and_claims(lines, intro_start, intro_end, claims, claim_info)
    
    is_negative_trials = ('negative-trials' in chapter_name)
    is_hypothesis_registry = ('hypothesis-registry' in chapter_name)
    
    # Write aggregator
    agg = []
    agg.append('#import "../../shared/environments.typ": *')
    agg.append('')
    agg.append(lines[ch_idx])
    if ch_label: agg.append(f'<{ch_label}>')
    agg.append('')
    for l in intro_prose: agg.append(l)
    if intro_prose: agg.append('')
    
    for idx, end_idx, title, label, h3_secs in h2_secs:
        sec_slug = slugify(title, 30)
        sec_dir = os.path.join(ch_dir, sec_slug)
        os.makedirs(sec_dir, exist_ok=True)
        
        pro_start = idx + 1
        if label: pro_start += 1
        h3_start = h3_secs[0][0] if h3_secs else end_idx
        
        prose, claim_starts = collect_prose_and_claims(lines, pro_start, h3_start, claims, claim_info)
        
        sec = []
        sec.append('#import "../../../shared/environments.typ": *')
        sec.append('')
        sec.append(lines[idx])
        if label: sec.append(f'<{label}>')
        sec.append('')
        
        for cs in claim_starts:
            if cs in claim_info:
                rp = os.path.relpath(claim_info[cs], os.path.dirname(os.path.join(sec_dir, f'{sec_slug}.typ')))
                sec.append(f'#include "{rp}"')
        for l in prose: sec.append(l)
        if prose: sec.append('')
        
        for jdx, jend, jtitle, jlabel, h4_secs in h3_secs:
            h3_slug = slugify(jtitle, 30)
            h3_dir = os.path.join(sec_dir, h3_slug)
            os.makedirs(h3_dir, exist_ok=True)
            
            h3_pro_start = jdx + 1
            if jlabel: h3_pro_start += 1
            h4_start = h4_secs[0][0] if h4_secs else jend
            
            h3_prose, h3_claim_starts = collect_prose_and_claims(lines, h3_pro_start, h4_start, claims, claim_info)
            
            h3 = []
            h3.append('#import "../../../../shared/environments.typ": *')
            h3.append('')
            h3.append(lines[jdx])
            if jlabel: h3.append(f'<{jlabel}>')
            h3.append('')
            
            for cs in h3_claim_starts:
                if cs in claim_info:
                    rp = os.path.relpath(claim_info[cs], os.path.dirname(os.path.join(h3_dir, f'{h3_slug}.typ')))
                    h3.append(f'#include "{rp}"')
            for l in h3_prose: h3.append(l)
            if h3_prose: h3.append('')
            
            for kdx, kend, ktitle, klabel in h4_secs:
                h4_slug = slugify(ktitle, 30)
                h4_dir = os.path.join(h3_dir, h4_slug)
                os.makedirs(h4_dir, exist_ok=True)
                
                h4_pro_start = kdx + 1
                if klabel: h4_pro_start += 1
                
                h4_prose, h4_claim_starts = collect_prose_and_claims(lines, h4_pro_start, kend, claims, claim_info)
                
                h4 = []
                h4.append('#import "../../../../../../shared/environments.typ": *')
                h4.append('')
                h4.append(lines[kdx])
                if klabel: h4.append(f'<{klabel}>')
                h4.append('')
                
                for cs in h4_claim_starts:
                    if cs in claim_info:
                        rp = os.path.relpath(claim_info[cs], os.path.dirname(os.path.join(h4_dir, f'{h4_slug}.typ')))
                        h4.append(f'#include "{rp}"')
                for l in h4_prose: h4.append(l)
                h4.append('')
                
                with open(os.path.join(h4_dir, f'{h4_slug}.typ'), 'w') as f:
                    f.write('\n'.join(h4) + '\n')
                h3.append(f'#include "./{h4_slug}/{h4_slug}.typ"')
            
            h3.append('')
            with open(os.path.join(h3_dir, f'{h3_slug}.typ'), 'w') as f:
                f.write('\n'.join(h3) + '\n')
            sec.append(f'#include "./{h3_slug}/{h3_slug}.typ"')
        
        sec.append('')
        with open(os.path.join(sec_dir, f'{sec_slug}.typ'), 'w') as f:
            f.write('\n'.join(sec) + '\n')
        agg.append(f'#include "./{sec_slug}/{sec_slug}.typ"')
    
    # Handle special includes from original files
    if 'ch30-clinical-trials' in chapter_name:
        # The original has: #include "negative-trials.typ"
        with open(src) as f:
            src_content = f.read()
        if 'negative-trials.typ' in src_content:
            agg.append('')
            agg.append('#include "negative-trials.typ"')
            print("  (preserved negative-trials.typ include)")
    
    agg.append('')
    with open(os.path.join(ch_dir, f'{chapter_name}.typ'), 'w') as f:
        f.write('\n'.join(agg) + '\n')
    
    h2_count = len(h2_secs)
    h3_count = sum(len(s[4]) for s in h2_secs)
    h4_count = sum(len(h4s) for s in h2_secs for _,_,_,_,h4s in s[4])
    print(f"  {chapter_name}: {h2_count}h2/{h3_count}h3/{h4_count}h4, {len(claims)} claims")

if __name__ == '__main__':
    chapters = sys.argv[1:] if len(sys.argv) > 1 else [
        'ch29-biomarker-research', 'ch30-clinical-trials',
        'ch31-mechanistic-studies', 'ch32-epidemiology-outcomes',
        'ch33-controversies', 'ch34-translational-findings',
        'ch35-research-infrastructure', 'ch36-proposed-studies',
    ]
    for ch in chapters:
        print(f"Processing {ch}...")
        process_chapter(ch)
