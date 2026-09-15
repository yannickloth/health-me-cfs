#import "../../../shared/environments.typ": *
#import "../../../shared/tables.typ": landscape, booktabs-stroke, table-inset

// =============================================================================
// SECTION 6: LOAD-BEARING VS. SECONDARY LOCKS
// =============================================================================

== Load-Bearing versus Secondary Locks
<sec:load-bearing-locks>

The multi-lock trap model (Section @sec:multi-lock-trap) established that ME/CFS persistence depends on multiple self-reinforcing mechanisms—“locks”—that maintain the disease state even after the original trigger has resolved. Not all locks are equal. A _load-bearing lock_ is one whose removal is necessary (though not necessarily sufficient) for escape from the disease attractor. A _secondary lock_ worsens symptoms and slows recovery but is not essential for disease maintenance: the remaining locks can sustain the disease without it.

The structural analogy is to a building: load-bearing walls support the structure; removing them causes collapse (of the disease state, in this case—which is the therapeutic goal). Non-load-bearing walls define spaces and provide insulation; removing them improves the interior without threatening the structure. In the disease context, “collapse” of the disease attractor means the system can return to the healthy state; removing secondary locks improves the patient's experience within the disease state without enabling escape. Figure @fig:load-bearing-locks illustrates this distinction and its predicted effect on disease trajectory.

#include "../../../figures/fig-load-bearing-locks.typ"


The distinction has profound therapeutic implications. Treating a secondary lock provides symptomatic benefit—often substantial, and sometimes dramatic enough that patients report feeling “much better.” But the benefit plateaus because the disease architecture remains intact. Treating a load-bearing lock may produce _no immediate improvement_ (because other locks compensate and maintain the disease state), yet it is essential for the eventual possibility of recovery. A treatment strategy that focuses exclusively on the most symptomatic locks—the ones causing the most daily suffering—may paradoxically be less effective in the long term than one that prioritizes load-bearing locks, even if the latter produces less immediate relief.

This creates a therapeutic dilemma: do you treat what hurts now (secondary locks) or what matters for recovery (load-bearing locks)? The answer, of course, is both—but the distinction ensures that load-bearing lock treatment is not neglected because its benefits are less immediately visible.

*Predicted load-bearing locks.*

_Epigenetic consolidation._ As discussed in Section @sec:amp-epigenetic, epigenetic modifications can maintain the disease gene expression program independently of the original triggers. If epigenetic consolidation has occurred, addressing the original root cause alone is insufficient: the disease state is now self-sustaining at the chromatin level. Epigenetic consolidation is load-bearing because its persistence guarantees disease persistence regardless of what else is treated. Remove the autoantibodies, disengage the safe mode, restore CNS energy—but if the epigenome still encodes the disease program, the system will re-establish the pathological state.

The load-bearing nature of epigenetic consolidation also explains the clinical observation that disease duration is the strongest predictor of prognosis. Early disease (before consolidation) is more responsive to treatment; late disease (after consolidation) resists even aggressive intervention. The “window of opportunity” for effective treatment is, in part, the window before epigenetic consolidation deepens the attractor beyond the reach of available interventions.

_Autoimmune persistence._ In patients with GPCR autoantibodies, the plasma cell sanctuaries that produce them represent a load-bearing lock. As long as autoantibody production continues, the downstream endothelial dysfunction, immune reprogramming, and multi-organ GPCR disruption will be maintained. This is true even if every other lock is released: the ongoing autoantibody assault will re-establish the pathological state within weeks to months.

The daratumumab response pattern is consistent with autoimmune persistence being a load-bearing lock: eliminating the plasma cell source of autoantibodies enables recovery in patients whose other locks are not yet fully consolidated (the 60% responders), while patients with deeply entrenched epigenetic consolidation may not recover even after autoantibody elimination (the 40% non-responders, who may need epigenetic intervention in addition to plasma cell depletion).

*Predicted secondary locks.*

_Oxidative stress cycle._ While oxidative stress amplifies mitochondrial damage and accelerates disease progression, it is downstream of the primary energy failure and would resolve if upstream mechanisms were corrected. Reducing oxidative stress (through antioxidant therapy) may slow deterioration and improve symptoms but cannot resolve the disease because the upstream mechanisms generating oxidative stress remain active. The oxidative stress cycle does not independently maintain the disease attractor.

_Sleep fragmentation._ Improving sleep quality reduces the symptom burden and may modestly improve restorative processes (glymphatic clearance, growth hormone secretion), but sleep fragmentation is generated by autonomic and neuroinflammatory dysfunction, not maintained independently. Patients whose sleep normalizes pharmacologically (e.g., with trazodone or suvorexant) without addressing upstream causes do not recover—they sleep better within the disease state.

_Viral reactivation._ Suppressing reactivated herpesviruses reduces immune activation and the associated metabolic burden, potentially improving symptoms. But the immune compromise that permitted reactivation persists, and other sources of immune activation remain. Antiviral therapy removes one input to the inflammatory loop, but the loop has other inputs that maintain it.

#include "hypotheses/hyp-load-bearing-lock-identification.typ"

The formal analysis of lock removal—including the minimum number and combination of locks that must be released for escape from the disease attractor—is developed in Chapter @ch:causal-hierarchy-formal, where each lock is modeled as a parameter that modifies the attractor landscape and whose removal is analyzed for sufficiency and necessity.
