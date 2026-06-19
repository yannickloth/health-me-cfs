# Phase 4c — Cross-Hypothesis Compatibility: Post-Exercise Recovery Optimization

**Date:** 2026-06-18  
**Audited:** 5 new hypotheses × existing registry scan  
**Method:** Pairwise mechanism-term overlap analysis

---

## New Hypotheses (Key Mechanism Terms)

| ID | Label | Type | Cert | Mechanism Keywords |
|----|-------|------|------|--------------------|
| A | `spec:recovery-network-collapse` | S | 0.40 | AMPK/PGC-1alpha/SIRT1 axis failure, NAD+ depletion, mitophagy block (ATG13/mTOR), membrane depolarization, ATP-limited repair, multi-pathway collapse |
| B | `spec:thermal-exercise-mimetic` | S | 0.35 | HSP70 upregulation, p38 MAPK → PGC-1alpha, NO-mediated vasodilation, passive repair cascade, no ATP depletion |
| C | `spec:resolution-failure-pem` | S | 0.45 | SPM deficiency (resolvin D1, protectin D1), impaired efferocytosis, M1→M2 shift failure, prolonged inflammatory half-life |
| D | `spec:antihistamine-pem-blockade` | S | 0.40 | Mast cell degranulation, histamine → cerebral vasodilation → reflex vasoconstriction, H1/H2 receptor blockade, brain fog prevention |
| E | `warn:get-harm-mecfs` | W | 0.50 | PGC-1alpha/AMPK/SIRT1 axis failure, 2-day CPET decline, GET → harm (51-74%), deconditioning ≠ causal, pacing over GET |

---

## Pairwise Relationship Matrix

### A × B (`recovery-network-collapse` × `thermal-exercise-mimetic`)

| Aspect | Detail |
|--------|--------|
| **Type** | **Reinforcement** (at mechanism endpoint, different direction) |
| Evidence | Both involve the same terminal cascade: PGC-1alpha activation. A says the cascade fails (multi-pathway collapse). B proposes a bypass route through HSP70→p38 MAPK→PGC-1alpha that avoids the ATP/NAD+ cost. B's mechanism is exactly what A says is broken from the *metabolic supply* side — B provides an alternative *triggering pathway* that might circumvent the collapse. |
| Key overlap | PGC-1alpha, HSP70, membrane repair, ATP-independent signaling |
| Cert adjustment | Neither ≥0.50 — no bump |
| Note | This is the most clinically important pair in the set. If B's mechanism functions independently of the metabolic pathways A describes as collapsed, thermal therapy becomes a viable workaround. |

### A × C (`recovery-network-collapse` × `resolution-failure-pem`)

| Aspect | Detail |
|--------|--------|
| **Type** | **Feed-into** (indirect via inflammation → metabolic dysfunction) |
| Evidence | The network collapse in A is primarily metabolic (ATP, NAD+, mitophagy). The resolution failure in C is primarily inflammatory (SPM, efferocytosis, macrophage polarization). These are parallel, semi-independent systems. However, prolonged inflammation (C) would worsen metabolic dysfunction (A) through inflammatory cytokine-mediated mitochondrial suppression (TNF-alpha → Complex I/III inhibition), and metabolic dysfunction (A) could impair resolution (C) if SPM synthesis requires ATP-dependent enzymatic steps (debatable — SPM synthesis is largely lipoxygenase/peroxidase-mediated, not heavily ATP-dependent). Weak coupling, not tight interdependence. |
| Key overlap | None directly; TNF-alpha → mitochondrial inhibition provides one cross-link |
| Cert adjustment | Neither ≥0.50 — no bump |
| Note | Compatible; could be targeted independently. Treating both simultaneously is better than either alone. |

### A × D (`recovery-network-collapse` × `antihistamine-pem-blockade`)

| Aspect | Detail |
|--------|--------|
| **Type** | **Independent** |
| Evidence | A describes metabolic/energetic failure in muscle (PGC-1alpha, NAD+, ATP). D describes histamine-mediated vasoactive cascade in brain (cerebral hypoperfusion). Different tissues (muscle vs brain), different mediators (metabolites vs histamine), different time scales (days vs hours). No mechanistic overlap. They can both be true simultaneously — and likely are in the same patient. |
| Key overlap | None |
| Cert adjustment | Neither ≥0.50 — no bump |
| Note | Treating both simultaneously targets different PEM components (A → muscular, D → cognitive). |

### A × E (`recovery-network-collapse` × `get-harm-mecfs`)

| Aspect | Detail |
|--------|--------|
| **Type** | **Reinforcement** (direct structural) |
| Evidence | E's mechanistic argument against GET is *grounded in* A's pathway-level evidence. E says "PGC-1alpha/AMPK/SIRT1 axis failure precludes adaptation" — this is exactly A's assertion. E cites 2-day CPET decline (harm evidence). A explains *why* at pathway level (multi-pathway collapse prevents training adaptation). A provides the mechanistic substrate for E's clinical warning. Strong reinforcement: E is the clinical consequence of A. |
| Key overlap | PGC-1alpha/AMPK/SIRT1, NAD+ depletion, 2-day CPET decline, ATP-limited repair |
| Cert adjustment | A=0.40, E=0.50 → Neither both ≥0.50. No bump despite the strong conceptual link. |
| Note | E could arguably be raised to 0.55 based on A's pathway evidence if A were stronger — but A at 0.40 is itself too low to serve as reinforcement. They stand on separate evidence bases. |

### B × C (`thermal-exercise-mimetic` × `resolution-failure-pem`)

| Aspect | Detail |
|--------|--------|
| **Type** | **Independent** |
| Evidence | B is metabolic (PGC-1alpha activation via HSP70/p38 MAPK). C is inflammatory (SPM-mediated resolution). Different cascades, different cell types (myocytes vs macrophages/microglia), different intervention types (heat vs omega-3/SPMs). Weak indirect link: HSP70 has anti-inflammatory properties (chaperones NF-kappaB, reduces cytokine production), so B's HSP70 upregulation might *assist* C's resolution by reducing inflammatory input. But this is secondary — the primary mechanisms are independent. |
| Key overlap | Minimal — HSP70 → reduced inflammation provides indirect bridge |
| Cert adjustment | Neither ≥0.50 — no bump |
| Note | Compatible; combination (heat therapy + SPM support) is plausible. |

### B × D (`thermal-exercise-mimetic` × `antihistamine-pem-blockade`)

| Aspect | Detail |
|--------|--------|
| **Type** | **Independent** (with potential synergy boundary) |
| Evidence | B: thermal → HSP70/PGC-1alpha in muscle. D: antihistamine → histamine blockade in cerebral vasculature. Different targets, different mechanisms. Potential interaction: heat-induced vasodilation (B, via NO) might alter drug distribution (D) but this is pharmacokinetic, not mechanistic. Also: Waon therapy could theoretically trigger mast cell degranulation (heat is a known MCAS trigger) — partially *opposing* D's goal. This is a practical caution, not a mechanistic conflict. |
| Key overlap | None direct; heat → mast cell degranulation (potential opposition) |
| Cert adjustment | Neither ≥0.50 — no bump |
| Note | Clinical caution: heat-intolerant/MCAS patients may worsen with B even if D is on board. Trial design should stratify by MCAS status. |

### B × E (`thermal-exercise-mimetic` × `get-harm-mecfs`)

| Aspect | Detail |
|--------|--------|
| **Type** | **Reinforcement** (B provides GET alternative) |
| Evidence | E argues GET fails because exercise triggers the broken PGC-1alpha/AMPK/SIRT1 axis at metabolic cost. B proposes a non-exercise route to PGC-1alpha activation through thermal HSP70 bypass. If B is valid, it provides precisely the alternative E calls for: "a path to functional maintenance without the harm profile of GET" (E's own wording). B would rescue the repair arm of exercise without the catabolic stress. |
| Key overlap | PGC-1alpha activation (failed via exercise in E, bypassed via heat in B), functional maintenance without PEM |
| Cert adjustment | B=0.35, E=0.50 → Neither both ≥0.50. No bump. |
| Note | If B were ever validated to ≥0.50, it would directly reinforce E by providing the positive alternative GET replacement. |

### C × D (`resolution-failure-pem` × `antihistamine-pem-blockade`)

| Aspect | Detail |
|--------|--------|
| **Type** | **Feed-into** (mast cell degranulation → inflammation → resolution burden) |
| Evidence | D reduces histamine-mediated vasoactive pathology (immediate post-exertion window, 0-6h). C describes the resolution phase (6-48h). These are sequential: D intercepts the early mast cell trigger; C handles the later inflammatory tail. If D reduces the initial inflammatory surge (by blocking histamine-mediated amplification), C's resolution burden is reduced — making resolution failure less consequential. C's SPM machinery still matters, but with less inflammation to resolve. Compatible, sequential, and potentially synergistic. |
| Key overlap | Sequential: mast cell (D, early) → resolution (C, late). Histamine amplifies inflammation that C must resolve. |
| Cert adjustment | Neither ≥0.50 — no bump |
| Note | Strongest combination rationale: D (pre-exercise antihistamine) + C (SPM/supplement for resolution) provides sequential coverage. |

### C × E (`resolution-failure-pem` × `get-harm-mecfs`)

| Aspect | Detail |
|--------|--------|
| **Type** | **Independent** (with weak feed-into edge) |
| Evidence | C focuses on inflammatory resolution (SPMs, cytokines, macrophage polarization). E focuses on metabolic adaptation failure (PGC-1alpha, NAD+, 2-day CPET). The metabolic failure of E is distinct from the inflammatory tail of C. Weak link: if E's metabolic collapse impairs ATP-dependent resolution steps (unlikely — SPM synthesis is lipoxygenase/peroxidase, not heavily ATP-dependent), there could be feed-in. Similarly, C's prolonged inflammation could worsen E's metabolic dysfunction. But the primary mechanisms are independent. |
| Key overlap | Minimal — inflammation → metabolic suppression provides indirect coupling |
| Cert adjustment | Neither ≥0.50 — no bump |
| Note | Compatible; both can be targeted independently (resolution support + pacing). |

### D × E (`antihistamine-pem-blockade` × `get-harm-mecfs`)

| Aspect | Detail |
|--------|--------|
| **Type** | **Independent** (with clinical synergy) |
| Evidence | D is a pharmacological intervention (antihistamine before exertion). E is a clinical warning (GET contraindicated). They share no mechanism — D describes histamine pharmacology, E describes exercise physiology failure. Clinical synergy: if GET is off the table (E), patients need *some* strategy for managing unavoidable exertion. D provides that strategy for the mast cell/histamine component. They are complementary clinical tools, not overlapping mechanisms. |
| Key overlap | None — different domains entirely (pharmacology vs exercise physiology) |
| Cert adjustment | Neither ≥0.50 — no bump |
| Note | E contraindicates GET; D offers a safe adjunct for inevitable exertion. |

---

## Relationship Summary

| Pair | Relationship | Cert σ | Bump? |
|------|-------------|--------|-------|
| A × B | Reinforcement (workaround) | — | No |
| A × C | Feed-into (weak, inflammation → metabolic) | — | No |
| A × D | Independent | — | No |
| A × E | Reinforcement (structural) | — | No |
| B × C | Independent | — | No |
| B × D | Independent (practical caution) | — | No |
| B × E | Reinforcement (B provides GET alternative) | — | No |
| C × D | Feed-into (sequential: early mast cell → late resolution) | — | No |
| C × E | Independent (weak feed-into edge) | — | No |
| D × E | Independent (clinical synergy) | — | No |

---

## Reinforcement Chains

1. **A → E (PGC-1alpha/AMPK/SIRT1 failure):** The recovery-network-collapse hypothesis provides the mechanistic substrate for the GET-harm warning. A: "no single recovery pathway is intact." E: "therefore GET cannot produce adaptation and produces harm." This is the strongest reinforcement in the set.

2. **B → E (thermal as GET alternative):** The thermal-exercise-mimetic provides the "what to do instead" answer to E's contraindication of GET. B's HBO → PGC-1alpha bypass is exactly the alternative E calls for.

3. **C → D (sequential timing synergy):** Mast cell degranulation (D target, early) → inflammation (C target, resolution, late). These are not mechanistically reinforcing but temporally complementary — sequential blockade is the rationale.

---

## Conflicts/Tensions

**No fundamental conflicts identified.** All five hypotheses operate on different mechanism domains or different time scales within the same recovery process:

| Domain | Hypotheses |
|--------|------------|
| Metabolic/energetic | A (collapse), B (bypass), E (GET failure) |
| Inflammatory/resolution | C (resolution failure), D (early histamine) |

The only practical tension is **B × D**: Waon therapy (mild hyperthermia) could trigger mast cell degranulation in MCAS-sensitive patients, partially opposing D. This is a patient-stratification issue, not a mechanistic conflict — B is safe in non-MCAS patients; D+mast cell stabilizer may allow B in MCAS patients with pre-treatment.

---

## Proposed Certainty Adjustments

| Hypothesis | Current | Proposed | Reason |
|------------|---------|----------|--------|
| All five | 0.35-0.50 | **No change** | Per rules: both parties in a pair must be ≥0.50 for any bump. A=0.40, B=0.35, C=0.45, D=0.40, E=0.50. No pair qualifies. Even A×E (strong reinforcement) has A at 0.40, below the 0.50 threshold. |

---

## Statistical Summary

| Metric | Count |
|--------|-------|
| Pairs audited | 10 |
| Reinforcement | 3 (A×E, A×B, B×E) |
| Feed-into | 2 (A×C weak, C×D) |
| Conflict | 0 |
| Independent | 5 (A×D, B×C, B×D, C×E, D×E) |
| Bumps applied | 0 |
