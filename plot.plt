#plot.plt


#set term x11 1
#set multiplot layout 2,1 rowsfirst
#plot 'signal.csv' using 1:2 with lines
#plot 'signal.csv' using 1:3 with lines
#unset multiplot
#plot 'mother_wavelet.txt' using 1:2
set term svg 
set output "wlet.svg" 
#set nokey							# Disable legend.
#set cbtics scale 0                  # Disable colourbar tics.
set title "wavelet transform  in Fortran"	# Set title.
set pm3d interpolate 2, 2			# Draw 3d data as colour map.
splot "data.csv" matrix with pm3d			# Plot matrix data in 3d.

#m="data.txt"
#plot m
#set pm3d map
#splot 'data.txt' matrix w image
#unset multiplot

