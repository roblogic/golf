character(8)s;do i=1,100;s=''
if(mod(i,3)<1)s='fizz';if(mod(i,5)<1)s=trim(s)//'buzz'
if(s>'')print'(A)',s;if(s<'A')print'(i0)',i;enddo;end
