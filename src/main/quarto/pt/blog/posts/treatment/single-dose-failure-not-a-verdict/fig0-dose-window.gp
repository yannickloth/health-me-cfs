# Fig 0 — One target's benefit window on the dose axis (mg)
# Illustrative parameters: K_d = 1 mg, n = 2, m = 2 (unmeasured, for clarity).
# Shows: at 1 mg the target sits inside its window; at 4 mg the window has
# closed (benefit ~2% of peak) — the mechanism is switched OFF, not amplified.
set terminal svg size 640,420 fname "Helvetica" fontscale 1.0 enhanced
set output "fig0-dose-window.svg"

set logscale x
set xlabel "dose  D  (mg)"
set ylabel "benefit from this target  (relative to peak)"
set xrange [0.1:20]
set yrange [0:1.18]
set xtics (0.1, 0.25, 0.5, 1, 2, 3, 4, 5, 10, 20)
set key off

n = 2; m = 2; Kd = 1.0
f(D) = (D/Kd)**n / ((D/Kd)**n + 1.0)
r(D) = 1.0 - f(D)
B(D) = f(D) * r(D)**m
scale = ((m+1.0)**(m+1.0)) / (m**m)

set style line 1 lc rgb "#009E73" lw 4 dt 1
set style line 2 lc rgb "#0072B2" lw 2 dt 3
set style line 3 lc rgb "#D55E00" lw 2 dt 3

# peak at D* = Kd * (1/m)^(1/n)
Dstar = Kd * (1.0/m)**(1.0/n)

set arrow 1 from 1, 0 to 1, B(1)*scale nohead ls 2
set arrow 2 from 4, 0 to 4, B(4)*scale nohead ls 3

set label 1 sprintf("peak  ≈ %.2f mg", Dstar) at Dstar, 1.0 center offset 0,1.4 font ",11"
set label 2 "1 mg: inside the window\n(84% of peak benefit)" at 1, B(1)*scale left offset 1.2,1.0 font ",11"
set label 3 "4 mg: window passed\n(2% — mechanism switched OFF)" at 4, B(4)*scale left offset 0.8,3.0 font ",11"

plot B(x)*scale ls 1 notitle, \
     "-" using 1:2 with points pt 7 ps 1.8 lc rgb "#0072B2" notitle, \
     "-" using 1:2 with points pt 7 ps 1.8 lc rgb "#D55E00" notitle
1	0.84375
e
4	0.02198
e
