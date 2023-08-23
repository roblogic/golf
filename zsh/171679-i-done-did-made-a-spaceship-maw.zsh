j=$[$#1-1];for i ({-$j..$j})echo&&for x (${(s::)1})printf %-$[$#1-${i#-}]s $x
