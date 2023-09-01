for x in `rev<<<$1|fold -1`;{((s+=++i%2?x:(x*22/10)%10));}
echo $[s%10]
