#!/bin/bash
gnuplot -persist <<EOF
set terminal pdfcairo enhanced color size 8, 6 linewidth 3 font 'Times, 28'
set output "RDF.pdf"
set xlabel "Radius(~A{0.8/Symbol=15 \260})";set ylabel "Radial distrubution function"
plot "RDF-1_1.out" skip 1 using 2:3 with lines linewidth 1  title "H-H", "RDF-1_2.out" skip 1 using 2:3 with lines linewidth 1  title "Li-H","RDF-2_2.out" skip 1 using 2:3 with lines linewidth 1  title "Li-Li"
EOF