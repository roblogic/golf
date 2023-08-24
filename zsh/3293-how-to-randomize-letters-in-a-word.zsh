for n;printf $n[1]$(fold -1<<<${n:1:-1}|shuf|tr -d \\n)${n:$#n-1:$#n-1}\  
