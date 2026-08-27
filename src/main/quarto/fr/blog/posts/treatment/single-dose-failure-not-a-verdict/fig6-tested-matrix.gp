# Fig 6 — What a 1 mg vs a 4 mg trial actually engages (LDN-specific)
# Schematic summary of the paper's dose-band map (ch33).
set terminal svg size 640,320 fname "Helvetica" fontscale 1.0 enhanced
set output "fig6-tested-matrix.svg"

set xrange [0:4]
set yrange [-0.55:2.85]
unset xtics
unset ytics
unset border
set key off

# colours: green active, amber partial, grey off
# top row (y 1.3-2.3): 1 mg
set object 1 rect from 0,1.3 to 1,2.3 fc rgb "#009E73" fs solid 1.0 border rgb "#FFFFFF" lw 2
set object 2 rect from 1,1.3 to 2,2.3 fc rgb "#E69F00" fs solid 1.0 border rgb "#FFFFFF" lw 2
set object 3 rect from 2,1.3 to 3,2.3 fc rgb "#CCCCCC" fs solid 1.0 border rgb "#FFFFFF" lw 2
set object 4 rect from 3,1.3 to 4,2.3 fc rgb "#E69F00" fs solid 1.0 border rgb "#FFFFFF" lw 2
# bottom row (y 0.1-1.1): 4 mg
set object 5 rect from 0,0.1 to 1,1.1 fc rgb "#CCCCCC" fs solid 1.0 border rgb "#FFFFFF" lw 2
set object 6 rect from 1,0.1 to 2,1.1 fc rgb "#009E73" fs solid 1.0 border rgb "#FFFFFF" lw 2
set object 7 rect from 2,0.1 to 3,1.1 fc rgb "#009E73" fs solid 1.0 border rgb "#FFFFFF" lw 2
set object 8 rect from 3,0.1 to 4,1.1 fc rgb "#E69F00" fs solid 1.0 border rgb "#FFFFFF" lw 2

# red dashed box: the cell the 4 mg trial never tested
set object 20 rect from 0,1.3 to 1,2.3 fs empty border lc rgb "#D55E00" lw 3 dt 2 front

# column headers
set label 1 "TLR4/Nrf2\npriming" at 0.5, 2.45 center font ",11"
set label 2 "endorphin\nrebound" at 1.5, 2.45 center font ",11"
set label 3 "TRPM3\nrestoration" at 2.5, 2.45 center font ",11"
set label 4 "orexin\ndisinhibition" at 3.5, 2.45 center font ",11"

# row labels
set label 5 "1 mg" at -0.08, 1.8 right font ",12"
set label 6 "4 mg" at -0.08, 0.6 right font ",12"

# cell text
set label 11 "ACTIVE" at 0.5, 1.8 center font ",10" textcolor rgb "#FFFFFF"
set label 12 "sub-plateau" at 1.5, 1.8 center font ",10"
set label 13 "not engaged" at 2.5, 1.8 center font ",10" textcolor rgb "#333333"
set label 14 "mild" at 3.5, 1.8 center font ",10"
set label 15 "OFF —\nover-blocked" at 0.5, 0.6 center font ",10" textcolor rgb "#333333"
set label 16 "plateau" at 1.5, 0.6 center font ",10" textcolor rgb "#FFFFFF"
set label 17 "ACTIVE" at 2.5, 0.6 center font ",10" textcolor rgb "#FFFFFF"
set label 18 "overshoot\nrisk" at 3.5, 0.6 center font ",10"

# punchline
set label 20 "A 4 mg null reads the bottom row only — the top-left cell was never tested." at 2, -0.35 center font ",11" textcolor rgb "#D55E00"

plot "-" using 1:2 notitle
-99 -99
e
