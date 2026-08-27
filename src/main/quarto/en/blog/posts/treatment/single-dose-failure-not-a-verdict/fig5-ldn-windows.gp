# Fig 5 — LDN's benefit windows on the real dose axis
# Window positions from the paper's dose-band map (ch33); shapes/heights
# illustrative and unmeasured. TLR4/Nrf2 (0.5-1.5 mg), endorphin rebound
# (1.5-3.0 mg, plateau preserved to 4.5 mg), TRPM3 (3.0-4.5 mg).
# Verticals mark the 1 mg and 4 mg trial points.
set terminal svg size 720,430 fname "Helvetica" fontscale 1.0 enhanced
set output "fig5-ldn-windows.svg"

set logscale x
set xlabel "dose  D  (mg)"
set ylabel "benefit  (schematic)"
set xrange [0.2:50]
set yrange [0:1.38]
set xtics (0.25, 0.5, 1, 1.5, 3, 4, 4.5, 10, 50)
set ytics 0.3
set key off

# two-arm window (n=2, m=2), peak normalised to 1
f(D,Kd) = (D/Kd)**2 / ((D/Kd)**2 + 1.0)
w(D,Kd) = f(D,Kd) * (1.0 - f(D,Kd))**2
scale = 6.75

# rise-plateau-fall for the endorphin rebound (n=3), peak ~0.731 -> x1.23 = 0.9
f3(x) = x**3 / (x**3 + 1.0)
endo(D) = 1.23 * f3(D/1.5) * (1.0 - f3(D/5.0))

H = 0.9
KdT = 1.225   # TLR4/Nrf2 peak at 0.87 mg (centre of 0.5-1.5)
KdP = 5.2     # TRPM3 peak at 3.67 mg (centre of 3.0-4.5)

set style line 1 lc rgb "#0072B2" lw 4
set style line 2 lc rgb "#009E73" lw 4
set style line 3 lc rgb "#D55E00" lw 4
set style line 4 lc rgb "#000000" lw 1.5 dt 3

set label 1 "TLR4/Nrf2 priming\n(0.5–1.5 mg)" at 0.87, 1.04 center font ",11"
set label 2 "endorphin rebound\n(1.5–3.0 mg)" at 1.9, 1.04 right font ",11"
set label 3 "TRPM3 restoration\n(3.0–4.5 mg)" at 5.0, 1.20 center font ",11"

set arrow 1 from 1, 0 to 1, 1.15 nohead ls 4
set arrow 2 from 4, 0 to 4, 1.15 nohead ls 4

plot H*w(x,KdT)*scale ls 1 notitle, \
     endo(x) ls 2 notitle, \
     H*w(x,KdP)*scale ls 3 notitle
