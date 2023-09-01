0data51,29,73,51,73,73,51,73,29,73
1hgr:hcolor=3:fori=0to123:hplot0,i to123,i:next
2hcolor=0:fori=18to84step22:hplot18,i to84,i:hploti,18toi,84:next
3fori=1to5:reada,b:a=a+.5:b=b+.5:gosub8:next:end
8forr=1to9:hplota,b:forn=0to6.3step.1:y=sin(n)*r:x=cos(n)*r:hplottoa+x,b+y
9next:next:return
