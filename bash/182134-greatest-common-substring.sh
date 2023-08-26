for l;{ d=${#l}
for((;i++<d**2;)){ a+=(${l:1+i/d:1+i%d});};}
for m in "${a[@]}";do k=0
for n;{ [[ $n =~ $m ]]&&((k++));}
((k==$#))&&b+=("$m");done
for e in "${b[@]}";do((${#e}>${#f}))&&f="$e";done
echo "$f"
