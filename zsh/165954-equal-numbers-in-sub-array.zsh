for i j k;sort<<<"$i
$j
$k"|uniq -c>>a;h()grep -c "^ *$1" a;h 3;h 2
