for i (2 13 21 22 23)G[i+$1$2]=*
for i ({1..100})printf \|${G[i]:-_}&&((i%10))||<<<\|
