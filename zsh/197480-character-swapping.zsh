w=$1;printf $w[1]${w[2,$#w-1]//(#m)(?)(?)/$MATCH[2]$MATCH[1]}${w:$#w-1}
