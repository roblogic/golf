((!$1))&&<<<"Congratulations on your new baby! :D"&&exit
y=$[$1<0?2:2*$1] a=${(l:y:: $:)} b=${(l:y+1::-:)}
(($1>0))&&echo "$a\n${a//$/|}"
echo "$b\n${b//-/~}\n$b"
