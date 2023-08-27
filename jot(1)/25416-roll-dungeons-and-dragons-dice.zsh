set -e;e=Invalid\ input;trap '<<<$e' ERR
echo "^0d\n+$\nd+\n+d\n+.+\n[-|*]">p;[[ `grep -cfp<<<$1`>0 ]]&&<<<$e&&exit
q=(${(s: :)${1//(#s)d/1d}//[^0-9]/ });for i ({1..$q[1]})((s+=RANDOM%q[2]+1))
<<<$[s+q[3]]
