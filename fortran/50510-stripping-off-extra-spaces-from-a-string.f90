character(99)S;read(*,'(A)')S;S='"'//trim(adjustl(S))//'"'
do i=1,99;if(S(i:i+1)>'  ')call fput(S(i:i));enddo;end
