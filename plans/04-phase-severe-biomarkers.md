# Phase 4: Severe Patients & Biomarker Research

**Depends on:** Phase 2  
**Can run in parallel with:** Phases 3, 5, 6  
**Estimated:** 2-3 sessions  
**Models:** 1 Haiku, 15 Sonnet

---

## Objective

Extend wheat-exercise intolerance research to severe patients and develop biomarker-driven treatment protocols.

**Source:** severe-patients-and-biomarker-research-plan.md

---

## 5 Research Streams

### Stream 1: Severe/Bedbound Mechanism Translation
- [ ] **4.1** Literature search | **Agent:** literature-integrator (Sonnet)
- [ ] **4.2** Content synthesis | **Agent:** scientific-insight-generator (Sonnet)

### Stream 2: Biomarker-Driven Prediction
- [ ] **4.3** Literature search | **Agent:** literature-integrator (Sonnet)
- [ ] **4.4** Content synthesis + decision tree | **Agent:** scientific-insight-generator (Sonnet)

### Stream 3: Supplement Protocols
- [ ] **4.5** Literature search | **Agent:** literature-integrator (Sonnet)
- [ ] **4.6** Content synthesis | **Agent:** scientific-insight-generator (Sonnet)

### Stream 4: Pediatric Considerations
- [ ] **4.7** Literature search | **Agent:** literature-integrator (Sonnet)
- [ ] **4.8** Content synthesis | **Agent:** scientific-insight-generator (Sonnet)

### Stream 5: Mast Cell Cascade
- [ ] **4.9** Literature search | **Agent:** literature-integrator (Sonnet)
- [ ] **4.10** Content synthesis | **Agent:** scientific-insight-generator (Sonnet)

### Integration
- [ ] **4.11** Integrate into Ch 11 (gut), Ch 17 (lifestyle) | **Agent:** chapter-integrator (Sonnet) × 5
- [ ] **4.12** Cross-reference and build verify | **Agent:** protocol-linker + test-runner (Haiku)

### QA
- [ ] **4.13** Scientific rigor audit | **Agent:** scientific-rigor-auditor (Sonnet)
- [ ] **4.14** Style naturalization | **Agent:** style-naturalizer (Sonnet)
- [ ] **4.15** Commit | **Agent:** haiku-general

---

## Success Criteria

- [ ] All 5 streams researched (15+ papers total)
- [ ] New sections in Ch 11, 17
- [ ] Biomarker decision tree created
- [ ] Supplement protocols documented
- [ ] `nix build` succeeds
