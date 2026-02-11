# Phase 3: Research Gaps & Ch. 15 Creation

**Depends on:** Phase 2  
**Can run in parallel with:** Phases 4, 5, 6  
**Estimated:** 3-4 sessions  
**Models:** 2 Haiku, 19 Sonnet, 1 Opus

---

## Objective

Create Ch. 15 "Symptom-Producing Mechanisms: Fatigue and Sleepiness" addressing Category A research gap (symptom-producing vs. capacity-limiting mechanisms).

**Estimated:** 40-50 pages with 10 sections

---

## Task Checklist

### Setup

- [ ] **3.1** Create `ch15-symptom-producing-mechanisms.tex` skeleton | **Agent:** haiku-general

### Literature (Sonnet)

- [ ] **3.2** Literature: Adenosine and sleep pressure | **Agent:** literature-integrator
- [ ] **3.3** Literature: Cytokine-induced somnolence | **Agent:** literature-integrator
- [ ] **3.4** Literature: Serotonin-fatigue linkage | **Agent:** literature-integrator
- [ ] **3.5** Literature: Melatonin dysfunction mechanisms | **Agent:** literature-integrator
- [ ] **3.6** Literature: Microglia and neuroinflammation | **Agent:** literature-integrator

### Content Creation (Sonnet)

- [ ] **3.7** Write 15.1: Conceptual framework | **Agent:** scientific-insight-generator
- [ ] **3.8** Write 15.2: Adenosine accumulation | **Agent:** scientific-insight-generator
- [ ] **3.9** Write 15.3: Inflammatory cytokines | **Agent:** scientific-insight-generator
- [ ] **3.10** Write 15.4: Serotonin dysregulation | **Agent:** scientific-insight-generator
- [ ] **3.11** Write 15.5: Melatonin dysfunction | **Agent:** scientific-insight-generator
- [ ] **3.12** Write 15.6: Microglia activation | **Agent:** scientific-insight-generator
- [ ] **3.13** Write 15.7: Integrated cascade model | **Agent:** scientific-insight-generator
- [ ] **3.14** Write 15.8: Phenotype connections | **Agent:** scientific-insight-generator
- [ ] **3.15** Write 15.9: Therapeutic implications | **Agent:** scientific-insight-generator
- [ ] **3.16** Write 15.10: Research directions | **Agent:** scientific-insight-generator

### QA

- [ ] **3.17** Add forward/backward cross-references | **Agent:** protocol-linker (Haiku)
- [ ] **3.18** Certainty classification audit | **Agent:** scientific-rigor-auditor (Sonnet)
- [ ] **3.19** Build verification | **Agent:** test-runner (Haiku)
- [ ] **3.20** Style naturalization | **Agent:** style-naturalizer (Sonnet)
- [ ] **3.21** Final quality review | **Agent:** opus-general (Opus)
- [ ] **3.22** Commit | **Agent:** haiku-general

---

## Success Criteria

- [ ] All 10 sections complete (15.1-15.10)
- [ ] 40-50 pages total
- [ ] All claims cited
- [ ] Cross-references valid
- [ ] `nix build` succeeds
- [ ] Integrated cascade model clearly explained

---

## Files Created/Modified

**Created:**
- `contents/part2-pathophysiology/ch15-symptom-producing-mechanisms.tex`

**Modified:**
- `ms.tex` (add ch15 include)
- `references.bib` (new citations)
