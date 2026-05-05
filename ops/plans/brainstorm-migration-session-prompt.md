# Session Prompt: Migrate Brainstorm Files into Hypothesis-Tree Stubs

## Goal

Migrate every remaining `content-staging/brainstorm-*.md` file into its corresponding
subtree stub in `ops/plans/hypotheses-trees/subtrees/`. After migration, delete the source
file. Commit at the end.

## Why

The subtree stub is the single source of truth for each topic. Brainstorm content sitting
in a separate file is a lookup hop with no benefit. The content is not "consumed" by
migration — it stays in the stub as source material for future `/integrate-topic` runs.

## Migration Rule

For each brainstorm file:

1. **Read** the stub file.
2. **Read** the brainstorm file.
3. **Append** the full brainstorm content to the stub under a new section:

```
## Brainstorm Content

> Migrated from `content-staging/<filename>` — [date]

[full verbatim content of the brainstorm file]
```

4. **Do not summarize, condense, or omit anything** — verbatim copy only.
5. **Delete** the brainstorm source file (`git rm content-staging/<filename>`).
6. Update the stub's `**Brainstorm file:**` header field from the filename pointer to:
   `**Brainstorm file:** (migrated into ## Brainstorm Content below)`

## Execution Strategy

**One agent per stub.** Do NOT batch multiple stubs into one agent — brainstorm files
are large (200–800 lines each) and batching causes context bloat.

Spawn agents in parallel batches of ~8. Wait for each batch to complete before starting
the next.

## Complete Work List

Stubs with brainstorm files to migrate (42 files, 2 shared):

| Stub | Brainstorm file(s) |
|------|--------------------|
| `ans-aging.md` | `brainstorm-ans-aging-2026-04-20.md` |
| `ant-autoantibodies.md` | `brainstorm-ant-autoantibodies-2026-04-12.md` |
| `autoimmune-ssc.md` | `brainstorm-lichen-sclerosus-mecfs-2026-05-01.md` ¹ |
| `bimodal-onset.md` | `brainstorm-bimodal-onset-2026-04-16.md` |
| `blood-immune.md` | `brainstorm-blood-immune-2026-04-16.md` |
| `calcium.md` | `brainstorm-calcium-2026-04-18.md` |
| `causal-hierarchy.md` | `brainstorm-causal-hierarchy-extensions.md` |
| `csf-drainage.md` | `brainstorm-csf-drainage-synergy-2026-04-14.md` |
| `energy-cartography.md` | `brainstorm-energy-cartography-2026-04-11.md` |
| `epigenetics.md` | `brainstorm-epigenetics-2026-04-26.md` |
| `exercise-blinding.md` | `brainstorm-exercise-blinding-20260421.md` |
| `funcap.md` | `brainstorm-funcap-2026-04-23.md` |
| `G16-aconitase-iron.md` | `brainstorm-G16-20260412.md` |
| `G17-kgdhc-tca.md` | `brainstorm-G17-20260412.md` |
| `G22-nad-paradox.md` | `brainstorm-G22-20260412.md` |
| `G23-fad-sink.md` | `brainstorm-G23-20260412.md` |
| `G28-complement-ant.md` | `brainstorm-G28-20260412.md` |
| `G32-astrocyte-creatine.md` | `brainstorm-G32-20260412.md` |
| `G34-itaconate-nrf2.md` | `brainstorm-G34-20260412.md` |
| `G39-biogenesis-trap.md` | `brainstorm-G39-20260412.md` |
| `G7-mito-pdh.md` | `brainstorm-G7-20260412.md` |
| `G9-oxidative-drain.md` | `brainstorm-G9-20260412.md` |
| `igg-drg.md` | `brainstorm-igg-drg-mecfs-2026-04-30.md` |
| `immunoadsorption.md` | `brainstorm-immunoadsorption-trials-20260420.md` |
| `isr.md` | `brainstorm-isr-mecfs-2026-05-01.md` ² |
| `lichen-sclerosus.md` | `brainstorm-lichen-sclerosus-mecfs-2026-05-01.md` ¹ |
| `li-mg-analogs.md` | `brainstorm-li-mg-analogs-2026-04-17.md` |
| `lithium-ip3.md` | `brainstorm-lithium-ip3-pip2-2026-04-17.md` |
| `mcas-domain6.md` | `brainstorm-mcas-domain6-2026-05-01.md` |
| `mcas-isr.md` | `brainstorm-isr-mecfs-2026-05-01.md` ² |
| `metabolic-reserve.md` | `brainstorm-metabolic-reserve-2026-04-20.md` |
| `mtdna-predisposition.md` | `brainstorm-mtdna-predisposition-mecfs-2026-05-02.md` |
| `neuroplasticity.md` | `brainstorm-neuroplasticity-integration-2026-03-27.md` |
| `pregnancy-repro.md` | `brainstorm-pregnancy-reproductive-health-2026-04-25.md` |
| `prodromal-signs.md` | `brainstorm-prodromal-signs-2026-04-20.md` |
| `progesterone.md` | `brainstorm-progesterone-mecfs-2026-04-25.md` |
| `septad-diagnostic.md` | `brainstorm-septad-diagnostic-map-2026-05-01.md` |
| `sleep-glymphatic.md` | `brainstorm-sleep-glymphatic-orexin-20260420.md` |
| `taurine.md` | `brainstorm-taurine-2026-04-16.md` |
| `trp-pentamer.md` | `brainstorm-trp-pentamer-vascular-2026-04-19.md` |
| `trp-piezo.md` | `brainstorm-trp-piezo-mecfs-2026-04-13.md` |
| `universal-mechs.md` | `brainstorm-universal-mechanisms-2026-04-17.md` |
| `vns-fibre.md` | `brainstorm-vns-fibre-selectivity-20260410.md` |
| `wound-healing.md` | `brainstorm-wound-healing-20260412.md` |

**Notes on shared files:**
- ¹ `brainstorm-lichen-sclerosus-mecfs-2026-05-01.md` is referenced by both `autoimmune-ssc.md`
  and `lichen-sclerosus.md`. Append the content to BOTH stubs. Delete the source file only
  after both stubs have been updated. Process `lichen-sclerosus.md` last of the two.
- ² `brainstorm-isr-mecfs-2026-05-01.md` is referenced by both `isr.md` and `mcas-isr.md`.
  Same rule: append to both, delete after both are done.

**Missing files (skip):**
- `brainstorm-hsat2-exosome-mecfs-2026-05-01.md` — does not exist; update stub header pointer to `(file not found — never generated)`
- `brainstorm-hsat2-hypotheses-2026-05-01.md` — same

## Agent Prompt Template

For each stub, spawn a `sonnet-general` agent with this prompt (fill in the blanks):

```
TASK: Migrate brainstorm file content into hypothesis-tree stub.

STUB: ops/plans/hypotheses-trees/subtrees/<STUB_FILE>
BRAINSTORM: content-staging/<BRAINSTORM_FILE>
PROJECT ROOT: /home/nicky/code/health-me-cfs

INSTRUCTIONS:
1. Read the stub file.
2. Read the brainstorm file.
3. Append to the stub:

   ## Brainstorm Content
   
   > Migrated from `content-staging/<BRAINSTORM_FILE>` — <DATE FROM FILE OR TODAY>
   
   [full verbatim content of brainstorm file — do not summarize, condense, or omit]

4. Change the stub's `**Brainstorm file:**` header line to:
   **Brainstorm file:** (migrated into ## Brainstorm Content below)

5. Run: git rm content-staging/<BRAINSTORM_FILE>
   [SKIP step 5 if this brainstorm file is shared and the other stub hasn't been
   processed yet — coordinate deletion with the other stub's agent]

CONSTRAINTS:
- Do NOT modify any other section of the stub
- Do NOT summarize or condense — verbatim only
- Do NOT touch the ## Nodes table
- Do NOT create new files
- Report: stub path, brainstorm file path, line count appended, whether source was deleted
```

## After All Agents Complete

1. Verify no brainstorm-*.md files remain in content-staging/:
   `ls content-staging/brainstorm-*.md`

2. Commit:
   `git add ops/plans/hypotheses-trees/subtrees/ content-staging/`
   `git commit -m "refactor(hypotheses-trees): migrate all brainstorm files into subtree stubs"`
