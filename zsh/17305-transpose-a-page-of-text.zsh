for i;n=$[$#i>n?$#i:n];for i;A+=(${(r:n:)i})
for k ({1..$n})w=`for j ({1..$#})printf ${A[j][k]}`&&<<<${w//% }
