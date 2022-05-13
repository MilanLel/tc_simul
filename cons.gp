set title Cons_title  font ",12" textcolor rgb "#0967b2"
set xlabel "Time"  font ",8" textcolor rgb "#89ba17" 
set ylabel Cons_Ylabel  font ",8" textcolor rgb "#89ba17" 
set grid
set autoscale y

set key right top outside noreverse enhanced autotitle font ",8"
set tics out nomirror

set datafile separator ';'

set xdata time
set timefmt '%Y-%m-%d %H:%M:%S'
set format x "%Y-%m-%d %H:%M:%S"
#set format y "%.1f"
#set logscale y dlg 

set tics font ",10"
set xtics rotate by -75

set terminal png enhanced  size 1200,600
set output datapng

set palette defined (0 'white', 0.25 'blue', 0.5 'green', 0.75 'yellow', 1 'red')

plot datacsv using 1:2 with lines title columnheader 

