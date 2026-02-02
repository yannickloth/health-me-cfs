# Continuation: Ursula Integration Session 2

**Session**: 2026-02-01
**Previous work**: Partial integration complete

---

## Completed

1. **Literature search**: Stuijt 2026 found (cimetidine + acyclovir pharmacokinetic enhancement)
2. **ch07 integration**: Added "Exhausted Immune Surveillance" hypothesis (Section `\ref{sec:exhausted-surveillance}`)
3. **ch05 integration**: Added multi-hit cascade pattern and false recovery pattern (Section `\ref{sec:multi-hit-cascade}`)
4. **ch15 partial**: Added LDN psychiatric warning (`\ref{warn:ldn-psychiatric}`)

---

## Remaining Tasks

1. **Fix undefined reference**: Add `\label{sec:paradoxical-reactor}` section to ch15 (referenced from LDN warning)
2. **Add to ch15**:
   - Famotidine psychiatric warning (same as LDN - depression/suicidal ideation)
   - Stuijt 2026 citation to cimetidine-antiviral section
   - Mestinon dose sensitivity note (20mg ok, 60mg not tolerated pattern)
   - Note that famotidine lacks cimetidine's immunomodulatory effects AND can cause psychiatric effects
3. **Add BibTeX**: Stuijt2026CimetidineAcyclovir to references.bib
4. **Quality review**: scientific-rigor-auditor on new sections
5. **Build verification**: nix build

---

## Key Content for Paradoxical Reactor Section

Create `\subsection{The Paradoxical Reactor Phenotype}` after line 1143 in ch15:

- Definition: Patients experiencing opposite/unexpected medication effects
- Documented reactions: LDN→depression, Famotidine→depression, Prednisolone→mania
- Protocol: Start 1/4-1/10 standard dose, slow titration, mood monitoring
- H2 blocker note: Cimetidine tolerated but Famotidine not (drug-specific, not class)

---

## Copy This Prompt

```
Continue Ursula integration. Previous session completed:
- ch07: Exhausted immune surveillance hypothesis
- ch05: Multi-hit cascade + false recovery patterns
- ch15: LDN psychiatric warning

REMAINING:
1. Add paradoxical reactor section to ch15 (fixes undefined ref)
2. Add Famotidine psychiatric warning
3. Add Stuijt 2026 citation + BibTeX entry
4. Add Mestinon dose sensitivity note
5. Run scientific-rigor-auditor on new ch05, ch07, ch15 sections
6. nix build

Case data at .claude/case-data/patients/majesticspinach2909/
```
