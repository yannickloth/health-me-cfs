# Fig 2 — The two-arm benefit: B(c) = B_max * f(c) * r(c)^m  (the inverted-U)
# Peak at f* = 1/(1+m); with m = 2, f* = 1/3. Marked by the vertical dashed line.
set terminal svg size 640,420 fname "Helvetica" fontscale 1.0 enhanced
set output "fig2-inverted-u.svg"

set logscale x
set xlabel "normalised concentration  c = D / K_d"
set ylabel "benefit  B(c)  (normalised)"
set xrange [0.01:100]
set yrange [0:1]

n = 2
m = 2
f(c) = c**n / (c**n + 1.0)
r(c) = 1.0 / (c**n + 1.0)
B(c) = f(c) * r(c)**m

# B_max = 1/(m^m / (m+1)^(m+1))... normalise so peak = 1
# Max of B is at f* = 1/(m+1) = 1/3 -> c* = (f*/(1-f*))^(1/n) = (1/2)^(1/2)
Bmax_scale = ( (m+1.0)**(m+1.0) ) / ( m**m )

set style line 1 lc rgb "#009E73" lw 4 dt 1
set style line 2 lc rgb "#000000" lw 2 dt 3

cstar = ((1.0/(m+1.0)) / (1.0 - 1.0/(m+1.0)))**(1.0/n)

set label 1 "peak  f* = 1/(1+m) = 1/3" at cstar, 1.0 center offset 0,0.7 font ",12"
set arrow 1 from cstar, 0.05 to cstar, 1.0 nohead ls 2

plot B(x)*Bmax_scale ls 1 title "B(c) = B_{max} · f(c) · r(c)^m"
