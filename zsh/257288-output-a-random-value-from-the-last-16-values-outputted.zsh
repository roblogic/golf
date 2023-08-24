seq 16|tee a;set `shuf a`
while shift;16=`shuf -n1 a`;<<<$16;s=(${(n)@});((s[1]<s[16]))&&<<<${(F)@}>a
