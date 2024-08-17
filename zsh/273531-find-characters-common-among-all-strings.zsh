d()(<<<$1|fold -1|sort)
m=$1;while ((#>1))m=`comm -12 <(d $m) <(d $2)`&&shift
<<<$m
