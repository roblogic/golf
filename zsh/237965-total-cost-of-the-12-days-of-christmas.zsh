A=($@)
for i ({1..$#})for j ({1..$i})((s+=A[j]*j))
printf %.2f $s
