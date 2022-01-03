#plot.plt
set term qt 1

set multiplot layout 2,1 rowsfirst
	set xlabel 'time' 
	set title 'signal f'

	plot '../out/signal.csv' using 1:2 with lines notitle

	set title 'ondellete mere: mexican hat'
	plot '../out/signal.csv' using 1:3 with lines notitle
unset multiplot

set ylabel 'time' 
set xlabel 'scale' rotate by 90

set xtics 50
set ytics 50
set ztics 1

#set term x11 1
set term qt 2
set view map
set view 0, 90

set title 'wavelet transform coefficients onf f with mexican hat'
splot '../out/data.csv' matrix w pm3d notitle
unset view 

set term qt 3
#set multiplot layout 1,2 rowsfirst
#plot 'signal.csv' using 1:2 with lines
#plot 'signal.csv' using 1:3 with lines
#unset multiplot
#plot 'mother_wavelet.txt' using 1:2

#set output "wlet.svg" 
#set nokey							# Disable legend.
#set cbtics scale 0                  # Disable colourbar tics.

 
set title 'wavelet transform coefficients onf f with mexican hat'
set pm3d interpolate 2, 2			# Draw 3d data as colour map.
set view 45, 350
set xlabel rotate by 0
set zlabel 'wavelet coef' rotate by 90

splot "../out/data.csv" matrix with pm3d	notitle		# Plot matrix data in 3d.

#m="data.txt"
#plot m
#set pm3d map
#splot 'data.txt' matrix w image
#unset multiplot


