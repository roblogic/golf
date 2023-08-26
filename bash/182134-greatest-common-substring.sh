for l;{ d=${#l}
for((i=0;i<d**2;i++)){ a="${l:i/d:1+i%d}" k=0
for n;{ [[ $n =~ $a ]]&&((k++));}
((k==$#))&&b+=("$a");};}
for e in "${b[@]}";do((${#e}>${#f}))&&f="$e";done
echo "$f"
