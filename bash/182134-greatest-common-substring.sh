for l;{((f++));d=${#l};i=;for((;i++<d**2;)){ echo "${l:i/d:1+i%d}">>$f;};}
for j in *;{((f++));grep -xf$j $[j+1]>$f;};egrep "^.{$(wc -L<$f)}$" $f
