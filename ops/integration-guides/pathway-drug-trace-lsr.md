# Pathway-to-Drug Forward Trace: Lytic-to-Structural IgG Ratio (LSR)

**Source hypothesis:** `@hyp:lytic-structural-igg-ratio` — LSR diagnostic biomarker (cert 0.45)
**Date:** 2026-07-25
**Certainty band:** ≥ 0.30 → write full trace + chapter content

## Hypothesis Summary

Elevated LSR (BZLF1 IgG ÷ VCA-p18 IgG) indicates a shift from the baseline LLPC-maintained antibody ratio toward selective lytic-cycle antibody elevation. Two candidate mechanisms:
- **M1 — Abortive lytic reactivation (ALR):** Preferential boosting of lytic-antigen responses via short-lived plasmablasts during abortive lytic cycling
- **M2 — Epitope-specific autoimmune drift:** Qualitative shift in antibody fine specificity toward cross-reactive lytic epitopes (analogous to MS EBNA-1/GlialCAM cross-reactivity)

## Cascade Trace

### Branch A: Abortive Lytic Reactivation → Elevated LSR

```
N0: Trigger (stress, inflammation, immune suppression) reactivates latent EBV
    ↓
N1: EBV immediate-early genes (BZLF1, BRLF1) expressed → lytic cycle entry
    Target: BZLF1 is the key immediate-early transactivator
    ↓
N2: Early lytic gene expression (BLLF3/dUTPase, BALF5/DNA pol, BMRF1/EA-D)
    Measurable: anti-dUTPase IgG, anti-EA-D IgG
    ↓
N3: Viral DNA replication initiated but abortive (ALR) — no infectious virions produced
    Key: This is abortive, NOT productive. qPCR may be negative. BZLF1 + dUTPase expressed but late structural genes (VCA, gB) are NOT.
    ↓
N4: Lytic antigens (BZLF1, dUTPase, EA-D) presented to memory B cells → short-lived plasmablast (SLPB) response
    Contrast: LLPC pool established at primary infection produces BOTH lytic AND structural antibodies at fixed ratio
    ↓
N5: SLPB-derived anti-BZLF1/dUTPase/EA-D IgG added ON TOP of LLPC-derived baseline
    Result: Numerator (lytic IgG) ↑ while denominator (structural IgG from LLPCs) stays stable
    ↓
N6: LSR elevated (BZLF1 IgG ÷ VCA-p18 IgG > population baseline)
    ↓
    Branch A1: Systemic immune activation
    N7a: Lytic antigens + anti-lytic IgG immune complexes → FcγR engagement → macrophage/monocyte activation → pro-inflammatory cytokines (TNF-α, IL-6) → systemic symptoms (fatigue, myalgia, malaise)
    ↓
    Branch A2: Cross-reactive autoimmune targeting
    N7b: Anti-BZLF1 IgG cross-reacts with host protein (analogous to EBNA-1/GlialCAM in MS) → tissue-specific autoimmune injury → organ-specific symptoms
    ↓
    Converge: Systemic + organ-specific symptoms → PEM, fatigue, cognitive dysfunction
```

### Branch B: Epitope-Specific Autoimmune Drift (No Ongoing Viral Activity)

```
N0: Past EBV infection established LLPC pool producing both lytic and structural IgG at fixed ratio
    ↓
N1: ME/CFS-associated B cell dysregulation (Sun 2024, scRNA-seq: increased plasma cell differentiation trajectory) → preferential survival/expansion of LLPC clones producing cross-reactive lytic epitope antibodies
    ↓
N2: Bone marrow niche competition: cross-reactive LLPC clones out-compete non-cross-reactive clones for survival signals (APRIL, BAFF, IL-6)
    ↓
N3: Anti-BZLF1/dUTPase IgG selectively enriched relative to anti-VCA-p18 IgG
    Result: Numerator (lytic IgG) ↑ while denominator (structural IgG) remains at LLPC baseline
    ↓
N4: LSR elevated — but NO active viral replication (no viral DNA, no mRNA, no ALR)
    Distinguishes from Branch A: qPCR negative, no viral mRNA, no early lytic gene expression
    ↓
N5: Cross-reactive anti-BZLF1 IgG binds host epitope → tissue injury → symptoms
    Mechanism: molecular mimicry, NOT viral replication
```

### Branch C: Normal LLPC Biology With Amplified Primary Response

```
N0: Primary EBV infection was unusually severe → larger LLPC pool established
    ↓
N1: All antibody specificities (lytic + structural) elevated proportionally
    ↓
N2: LSR normal (numerator and denominator both scaled)
    ↓
N3: Total EBV IgG elevated BUT ratio unchanged
    Falsifies: LSR hypothesis — if this is the dominant mechanism, LSR will NOT discriminate
```

## Drug Interception Points

### Node N4 (Branch A): Valacyclovir / Valganciclovir / Famciclovir

**Drug:** Valacyclovir (acyclovir prodrug → viral DNA polymerase inhibitor)
**Target:** EBV DNA polymerase (BALF5) — blocks viral DNA replication at Node N3
**Certainty for EBV suppression:** 0.55 (two controlled positive trials in ME/CFS: Lerner 2007, Montoya 2013; limited by absence of viral DNA monitoring, single-group designs)
**Specificity:** Moderate — acyclovir inhibits herpesvirus DNA polymerase (EBV, VZV, HSV-1/2). Does NOT inhibit HHV-6 (different polymerase). Does NOT suppress transcription of immediate-early or early genes → BZLF1/dUTPase expression may continue even with DNA replication blocked. Does NOT deplete existing LLPCs or SLPBs.
**Cascade cert × drug cert interaction:** 0.45 × 0.55 = 0.2475 (moderate — above 0.05 threshold)

**If valacyclovir works (positive response):**
- Bottleneck is at or above N3 (viral DNA replication). Anti-BZLF1/dUTPase IgG is being continuously produced by SLPBs responding to ALR events, and suppressing those events reduces antibody production → LSR should decrease.
- Inference certainty: 0.55 × 0.45 × 0.40 (specificity factor — valacyclovir also active against VZV/HSV, off-target effects possible) = 0.099 → LOW confidence. Valacyclovir response is consistent with ALR but not diagnostic — VZV/HSV suppression could produce the same clinical improvement.
- ALR model supported (Branch A). LLPC-only model (Branch B) not excluded — valacyclovir could reduce symptoms through non-EBV mechanisms while LSR remains elevated.
- **Prediction:** If ALR is the dominant mechanism, LSR should DECLINE after 3–6 months of valacyclovir. If LSR stays elevated despite clinical improvement → either (a) LSR is driven by LLPC pool (Branch B), not ALR, or (b) ALR continues at a subclinical level undetectable by DNA replication but still producing lytic antigens.

**If valacyclovir fails (null response at adequate dose/duration):**
- Bottleneck is below N3, OR in a parallel branch, OR the mechanism is NOT ALR-driven. Five possibilities:
  1. **LLPC autoimmune drift (Branch B):** LSR is elevated due to B cell dysregulation + cross-reactive LLPC selection, not ongoing viral replication. Valacyclovir has NO effect on LLPCs → LSR remains elevated, patient remains symptomatic. **This is the most likely interpretation if LSR is confirmed elevated but valacyclovir has zero effect.** Test: LSR remains elevated before and after valacyclovir trial; no change in symptoms.
  2. **CNS sanctuary site:** EBV reactivation occurs in CNS (DRG, brainstem, dorsal root ganglia) where oral acyclovir does not achieve therapeutic concentrations. Systemic LSR reflects spillover from CNS reactivation. Valganciclovir may access tissue sanctuaries better. Test: if valganciclovir works where valacyclovir failed → CNS sanctuary site model supported.
  3. **HHV-6-driven:** Valacyclovir is EBV-selective. If LSR includes HHV-6 dUTPase IgG elevation (Palomo 2026: 72.5% co-expression), valacyclovir failure could mean HHV-6 is the dominant reactivating virus. Test: valganciclovir (HHV-6 active) works where valacyclovir failed → HHV-6 as driver.
  4. **Lytic antigen source is not DNA-replication-dependent:** Immediate-early (BZLF1) and early (dUTPase) gene transcription occurs BEFORE DNA replication. Valacyclovir blocks the viral DNA polymerase (N3) but does NOT block BZLF1 or dUTPase expression (N1–N2). If ALR is stuck at the early gene expression stage and never proceeds to DNA replication, valacyclovir has NO target in the cascade. LSR would remain elevated because BZLF1/dUTPase proteins are still being produced even with DNA pol inhibited. Test: valacyclovir reduces viral DNA load (qPCR, if detectable) but LSR stays elevated → early gene expression continues despite DNA pol block.
  5. **LSR is a normal variant:** Elevated LSR reflects individual differences in primary infection severity (Branch C) → no viral activity → no treatment target. Test: total EBV IgG also elevated proportionally → LSR normal when corrected for total IgG.

**Discriminating probes:**
- **Valacyclovir vs rituximab:** Valacyclovir targets DNA polymerase (N3, Branch A only). Rituximab depletes CD20⁺ B cells → eliminates both SLPBs (short-lived, but rapidly reconstituted from memory B cells) AND memory B cells (which differentiate into SLPBs on antigen re-encounter). LLPCs are CD20⁻ and rituximab-spared. If LSR drops after rituximab but NOT after valacyclovir → the lytic antibody source is the memory B cell → SLPB differentiation pathway (Branch A), NOT LLPC auto-selection (Branch B). BUT: rituximab's specificity is very broad (depletes ALL CD20⁺ B cells, not just EBV-specific ones) → specificity factor very low (0.15), cumulative cert 0.45 × 0.40 × 0.15 = 0.027 → below chapter integration threshold. **This is a theoretical discriminator but too non-specific for clinical deployment as a diagnostic probe.** No clean discriminator exists — all intercepting drugs at this cascade have ≥3 targets; no single drug response can distinguish between nodes with acceptable specificity.
- **Best available discriminator (indirect):** Measure LSR before and after 6-month valacyclovir trial. If LSR declines → Branch A (ALR-driven). If LSR unchanged → Branch B (LLPC-driven) or Branch A with early-gene-only ALR (valacyclovir has no target because ALR never reaches DNA replication). This is a biochemical measurement, not a drug-response discriminator — it measures what valacyclovir does to the biomarker, not what the biomarker predicts about valacyclovir response.

### Node N4 (Branch A): Valganciclovir

**Drug:** Valganciclovir (ganciclovir prodrug → broader herpesvirus DNA pol inhibitor)
**Target:** EBV, HHV-6, CMV DNA polymerase — broader than acyclovir
**Certainty for herpesvirus suppression:** 0.50 (one controlled trial, Montoya 2013; more toxic than valacyclovir)
**Specificity:** Low — targets CMV + HHV-6 + EBV polymerases; broader spectrum = less diagnostic specificity
**Cascade cert × drug cert:** 0.45 × 0.50 × 0.25 (specificity) = 0.056 → marginal, at threshold

**If valganciclovir works where valacyclovir failed:**
- HHV-6 or CMV is the dominant reactivating virus (not EBV), OR CNS/tissue sanctuary site reached. Valganciclovir accesses tissue compartments better than acyclovir.
- Inference: Herpesvirus reactivation is rate-limiting but the specific virus is not EBV. The broader spectrum leaves ambiguity about which virus.
- LSR test implication: if HHV-6 dUTPase antibodies are elevated in the same patient (Palomo 2026: 72.5% co-expression), the LSR should compute separate ratios for each herpesvirus (anti-BZLF1 ÷ anti-VCA-p18 for EBV; anti-U45 dUTPase ÷ anti-gB for HHV-6) to identify which virus is the dominant driver.

**If valganciclovir also fails:**
- Neither EBV, HHV-6, nor CMV replication is rate-limiting. Branch B (LLPC-driven) is the most likely mechanism.
- Bone marrow suppression at subtherapeutic dose → marrow reserve exhausted (diagnostic for HSC pool depletion, already documented in sec-12 valganciclovir entry). Cannot safely pursue further antiviral therapy.
- **This is the strongest available negative evidence for Branch B.** If both valacyclovir and valganciclovir fail AND LSR is confirmed elevated → the elevated LSR is almost certainly NOT driven by ongoing viral replication. It reflects either (a) LLPC-selective autoimmune drift, or (b) B cell dysregulation with preferential LLPC clonal expansion.

## Cumulative Inference Summary

| Drug response pattern | Preferred mechanism | Certainty | Branch |
|----------------------|---------------------|-----------|--------|
| Valacyclovir → positive, LSR ↓ | ALR-driven (Branch A) | 0.10 (low specificity) | A |
| Valacyclovir → null, LSR unchanged | LLPC-driven (Branch B) OR early-gene-only ALR | 0.15 (cannot distinguish B from early-gene ALR) | B or A-subtype |
| Valacyclovir → null, valganciclovir → positive | HHV-6/CMV-driven, or CNS sanctuary | 0.06 (very low) | A-subtype |
| Both null, LSR elevated | LLPC autoimmune drift (Branch B) | 0.20 (strongest available negative evidence) | B |

**No clean discriminator exists.** All intercepting drugs have ≥3 targets; no single drug response can distinguish between nodes with acceptable specificity. The best available approach is biochemical (measure LSR before/after valacyclovir) rather than drug-response discriminator.

## Pruning Notes

- Rituximab as LSR probe: cumulative cert 0.027 → below 0.05 threshold → ops-only. Mentioned above but NOT written to chapter.
- Lysine: antiviral effect too weak (certainty <0.20 for EBV suppression) → not a useful probe.
- Arginine challenge: if arginine loading triggers herpesvirus outbreak, confirms ALR is ongoing and arginine is the limiting substrate. But risk of inducing viral flare makes this a dangerous probe → NOT recommended. Kept as theoretical possibility only.
- Rintatolimod: TLR3 agonist; if works, antiviral defect is upstream (TLR3 pathway). But rintatolimod's mechanism is too broad (TLR3 activation → IFN response → multiple antiviral effects) to narrow between ALR vs LLPC models. Not a discriminating probe.

## Chapter Placement

| Output | Placement | Rationale |
|--------|-----------|-----------|
| Cascade + valacyclovir failure interpretation | `subsec-06-antibody-persistence.typ`, new section after LSR hypothesis | Core hypothesis is in ch07; drug-response cascade belongs with the hypothesis as extension |
| Valacyclovir sec-12 update | `sec-12-*.typ`, append to valacyclovir entry | Document LSR-specific interpretation in the compendium |
| Research idea proposal | `ch38-proposed-studies/` or `ch37-proposed-studies.typ` | Standalone study proposal for LSR validation |
