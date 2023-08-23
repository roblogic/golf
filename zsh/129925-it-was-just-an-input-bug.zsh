b=`rev<<<$1`${1:1};j=$#1
for c ({$j..1} {2..$j}){printf %$[(j-1)*(j-c)]s
for x (${(s::)b})printf %-$c\s $x;echo}
