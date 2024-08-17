#define w' on the wall'
#define p trim(x),trim(b)
character(16)a,b,c,x
a=' bottles of beer';b=a;c=' bottle of beer'
do i=99,1,-1
write(x,'(i0)')i
if(i<2)b=c
if(i<99)print*,'Take one down, pass it around, ',p,w,'.',new_line(x)
print*,p,w,', ',p,'.'
enddo
print*,'Go to the store and buy some more, 99',a,w,'.'
end
