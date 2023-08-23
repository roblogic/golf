var c,d:char;s:string;i:word;begin;read(s);for c:=^to^do begin;i:=0;for d in upcase(s)do i+=ord(c=d);if i>0then writeln(c,i)end;end.
