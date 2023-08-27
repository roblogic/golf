real,allocatable::A(:),s;read*,n
allocate(A(n));read*,A
do i=1,n;do j=1,i;s=s+A(j)*j
enddo;enddo
print'(f0.2)',s
end
