# Fig 1 — The two arms: occupancy f(c) (rising) and residual tone r(c) (falling)
# Occupancy is monotone; residual tone declines; neither alone is an inverted-U.
#
# f(c) = c^n / (c^n + 1);  r(c) = 1 - f(c) = 1 / (c^n + 1);  n = 2
set terminal svg size 640,420 fname "Helvetica" fontscale 1.0 enhanced
set output "fig1-arms.svg"

set logscale x
set xlabel "normalised concentration  c = D / K_d"
set ylabel "fraction"
set xrange [0.01:100]
set yrange [0:1]
set key top right

n = 2
f(c) = c**n / (c**n + 1.0)
r(c) = 1.0 / (c**n + 1.0)

set style line 1 lc rgb "#0072B2" lw 3 dt 1
set style line 2 lc rgb "#D55E00" lw 3 dt 2

plot f(x) ls 1 title "occupancy  f(c)  (rising arm)", \
     r(x) ls 2 title "residual tone  r(c)  (falling arm)"
