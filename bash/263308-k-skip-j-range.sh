c=$3;for((i=1;i<=c;i+=$1+$2)){ seq $i $[k=i+$1-1,k<c?k:c];}
