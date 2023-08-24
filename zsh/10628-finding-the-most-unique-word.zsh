for x;z=`fold -1<<<$x|sort|uniq|wc -l` m=$[z>m?z:m]&&echo $z $x>>p
grep ^$m p
