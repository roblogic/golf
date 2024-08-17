character*8s;do i=1,100;s=''
if(mod(i,3)<1)s='fizz'
if(mod(i,5)<1)s=trim(s)//'buzz'
if(s=='')write(s,'(i0)')i
print*,s
enddo
end
