for x in `fold -1|tee a|sort|uniq`;{ grep $x a|rs -g0;}
