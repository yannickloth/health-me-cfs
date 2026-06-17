#import "../../../../shared/environments.typ": *

=== The Ten Steps


#figure(
  kind: table,
  caption: [ATP accounting across the ten steps of cellular energy metabolism (glucose basis, ~30 ATP per glucose fully oxidized). Direct yield: ATP or ATP-equivalent reducing equivalents produced at this step. Gated yield: downstream ATP that depends on this step completing. Percent of total: gated yield as fraction of ~30 ATP.],
  table(
    columns: (auto, 1fr, auto, auto, auto),
    align: (left, left, right, right, right),
    table.header([*Step*], [*Function*], [*Direct*], [*Gated*], [*% total*]),
    [1], [Substrate delivery], [0], [~30], [100%],
    [2], [Glycolysis], [+2 ATP, +2 NADH], [~30], [100%],
    [3], [Pyruvate dehydrogenase (PDC)], [+2 NADH (=+5 gated)], [~25], [~83%],
    [4], [Carnitine shuttle / β-oxidation], [0 (glucose basis)], [—], [—],
    [5], [Krebs cycle], [+2 GTP, +6 NADH, +2 FADH#sub[2]], [~20], [~67%],
    [6], [Cofactors (CoQ10, FAD, NAD#super[+], thiamine)], [0 direct], [up to ~25], [up to ~83%],
    [7], [ANT (ATP export)], [0], [~28], [~93%],
    [8], [Creatine phosphate shuttle], [0 (kinetic buffer)], [—], [—],
    [9], [ROS scavenging], [0 (net-negative)], [—], [—],
    [10], [Dynamics / biogenesis], [0 (capacity setter)], [—], [—],
  )
) <tab:atp-accounting>

Step 4 (carnitine/β-oxidation) reports zero direct yield on a glucose basis because it is a fatty-acid-specific pathway; for palmitate the yield is +7 FADH#sub[2] + 7 NADH + 8 acetyl-CoA per molecule. Steps 8, 9, and 10 are not stoichiometric producers: creatine phosphate is a kinetic buffer, ROS scavenging is net-negative (consuming NADPH and glutathione), and dynamics/biogenesis is a longitudinal capacity setter. All three can fail without changing the per-cycle ATP count, yet their failure degrades overall system performance through kinetic, protective, and regenerative mechanisms respectively.

