w=$1;printf $w[1];for i ({2..$[$#w-2]..2})printf $w[i+1]$w[i];<<<${w:$i+1}
