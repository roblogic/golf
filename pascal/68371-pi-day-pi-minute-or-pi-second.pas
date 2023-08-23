uses sysutils,RegExpr;var x:array[0..2]of string=('.*:03:14','.* 03:14.*','14-3.*');y:array[0..2]of string=('Second','Minute','Day');i:word;begin
for i:=0to 2do if ExecRegExpr(x[i],DateTimeToStr(Now))then writeln('Pi ',y[i]);end.
