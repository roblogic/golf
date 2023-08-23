seq 1 $3|xargs -n$[$1+$2]|cut -d\  -f1-$1
