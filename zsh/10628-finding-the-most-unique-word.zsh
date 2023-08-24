typeset -A w
for x;z=`fold -1<<<$x|sort|uniq|wc -l` w+=($x $z) m=$[z>m?z:m]
for y (${(k)w})((w[$y]==m))&&<<<$y\ $w[$y]
