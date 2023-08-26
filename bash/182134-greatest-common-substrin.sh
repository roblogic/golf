#!/usr/local/bin/bash
for l in "$@";do                # for each arg
  d=${#l}
  for((i=0;i<d;i++)){
    s="${l: -i}"                # take i-length suffix, s
    a+=( "$s" )
      for((j=1;j<${#s};j++)){
        a+=( "${s:0:j}" )            # take j-length prefix of s
      }
  }
done
for m in "${a[@]}";do
  k=0
  for n in "$@";do
    [[ $n =~ $m ]]&&{ ((k++));}
  done
  [ $k = $# ]&&{ b+=( "$m" );}     # store the strings that match all inputs
done
for e in "${b[@]}";do
  [ ${#e} -gt ${#f} ]&&{ f="$e";}
done
echo "$f"
