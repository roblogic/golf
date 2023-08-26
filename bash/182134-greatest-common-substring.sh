for l;{
for((i=0;i<${#l};i++)){ s="${l: -i}" a+=("$s")
for((j=1;j<${#s};j++)){ a+=("${s:0:j}");};};}
for m in "${a[@]}";do k=0
for n in "$@";do [[ $n =~ $m ]]&&((k++));done
((k==$#))&&b+=("$m");done
for e in "${b[@]}";do((${#e}>${#f}))&&f="$e";done
echo "$f"
