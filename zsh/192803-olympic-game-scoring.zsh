setopt FORCE_FLOAT
m=$1 n=$1 a=$#
for x ((t+=x))&&m=$[x>m?x:m]&&n=$[x<n?x:n]
s=$[2*(a>2?(t-m-n)/(a-2):t/a)]
<<<$[(s^0+(s-s^0>.5?1:0))/2]
