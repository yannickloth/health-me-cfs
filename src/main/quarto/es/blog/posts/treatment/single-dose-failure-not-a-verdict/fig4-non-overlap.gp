# Fig 3 — Non-overlapping target windows: B_total(D) = sum of two-arm windows
# Two targets with different K_d; their windows peak at different doses and do
# not overlap. Shows B_total(D), its two terms, and that a null at high dose
# tests only the high-dose target.
set terminal svg size 640,420 fname "Helvetica" fontscale 1.0 enhanced
set output "fig4-non-overlap.svg"

set logscale x
set xlabel "dose  D  (mg, arbitrary scale)"
set ylabel "benefit  (normalised)"
set xrange [0.05:50]
set yrange [0:1.05]

# Target 1 (low dose): peaks near D = 1
n = 2; m = 2
f(D,Kd) = (D/Kd)**n / ((D/Kd)**n + 1.0)
r(D,Kd) = 1.0 - f(D,Kd)
w(D,Kd) = f(D,Kd) * r(D,Kd)**m
scale(m) = ((m+1.0)**(m+1.0)) / (m**m)

Kd1 = 1.0
Kd2 = 15.0

set style line 1 lc rgb "#0072B2" lw 2 dt 2
set style line 2 lc rgb "#D55E00" lw 2 dt 4
set style line 3 lc rgb "#000000" lw 4 dt 1

set label 1 "target 1\n(K_{d} low)" at Kd1, 0.35 center font ",11"
set label 2 "target 2\n(K_{d} high)" at Kd2, 0.35 center font ",11"

plot w(x,Kd1)*scale(m) ls 1 title "window of target 1", \
     w(x,Kd2)*scale(m) ls 2 title "window of target 2", \
     (w(x,Kd1)+w(x,Kd2))*scale(m) ls 3 title "B_{total}(D)"
