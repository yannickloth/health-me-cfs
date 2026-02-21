# Phase 2: Content-Staging Integration

**Depends on:** Phase 1  
**Estimated:** 2-3 sessions  
**Models:** 2 Haiku, 10 Sonnet, 1 Opus

---

## Objective

Integrate 10 existing `.tex` files + 7 integration guides from `.claude/content-staging/` that are research-complete but not yet integrated.

**Rationale:** Prevents staleness, establishes foundations for Phases 3-6.

---

## Task Checklist

### Integration Tasks (Sonnet)

- [ ] **2.1** Integrate acute-onset protocol → Ch 14a/14b | **Agent:** chapter-integrator
- [ ] **2.2** Integrate front-loading strategy → Ch 14a | **Agent:** chapter-integrator  
- [ ] **2.3** Integrate HRV-guided pacing → Ch 17 | **Agent:** chapter-integrator
- [ ] **2.4** Integrate sports-medicine pacing → Ch 17 | **Agent:** chapter-integrator
- [ ] **2.5** Integrate astrocyte-energy-gate hypothesis → Ch 8 | **Agent:** chapter-integrator
- [ ] **2.6** Integrate CNS-energy-triage model → Ch 14j | **Agent:** chapter-integrator
- [ ] **2.7** Add Wirth neurotransmitter insights → Ch 8 | **Agent:** chapter-integrator
- [ ] **2.8** Add Wirth-Scheibenbogen 2025 insights → Ch 7, 10 | **Agent:** chapter-integrator

### Verification (Haiku + Opus)

- [ ] **2.9** Cross-reference all new sections | **Agent:** protocol-linker (Haiku)
- [ ] **2.10** Build verification | **Agent:** test-runner (Haiku)
- [ ] **2.11** Scientific rigor audit | **Agent:** scientific-rigor-auditor (Opus)
- [ ] **2.12** Commit | **Agent:** haiku-general

---

## Success Criteria

- [ ] All integration guides processed
- [ ] Cross-references validated
- [ ] `nix build` succeeds
- [ ] No uncited claims
- [ ] All staged content archived/deleted

---

## Next Phase

**Phases 3-6 can run in parallel** after Phase 2 completes:
- Phase 3: Research Gaps (Ch. 15)
- Phase 4: Severe Patients & Biomarkers
- Phase 5: Marie-Inspired Additions
- Phase 6: Medication Effects (drafts)
