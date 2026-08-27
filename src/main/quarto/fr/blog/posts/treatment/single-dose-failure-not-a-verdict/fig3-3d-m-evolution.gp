# Fig 3 — 3D surface B(c, m): how the benefit curve changes as steepness m evolves.
# x: log c (normalised concentration); y: m (steepness exponent);
# z: B(c,m) = f(c) * r(c)^m, normalised so each curve's peak = 1.
# Shows the peak moving toward lower c (higher m => earlier extinguishment),
# matching f* = 1/(1+m).
set terminal svg size 640,480 fname "Helvetica" fontscale 1.0 enhanced
set output "fig3-3d-m-evolution.svg"

set nokey
set pm3d
set view 55, 35, 1.2, 1.0
set xlabel "log c" offset 0,-1,0
set ylabel "m" offset 3,0,0
set zlabel "B(c,m)" offset 0,0,0

n = 2
f(c) = c**n / (c**n + 1.0)
r(c) = 1.0 - f(c)
scale(m) = ((m+1.0)**(m+1.0)) / (m**m)
B(c,m) = (f(c) * r(c)**m) * scale(m)

set logscale x
set xrange [0.01:100]
set yrange [1:6]
set zrange [0:1.1]
set xtics (0.01,0.1,1,10,100)
set autoscale xfix
set grid

set palette defined (0 "#0072B2", 0.5 "#009E73", 1 "#D55E00")

splot B(x,y) with pm3d notitle
