for c ({1..9} {8..1}){w=$[(10**c/9)**2];printf \\n%$[(5-c)*(6-c)]s
for x (${(s::)w})printf %-$[9-$#w/2]s $x}
