character(99),allocatable::A(:);character(1)r,s
read*,k,n;allocate(A(n))
do i=1,n;read'(A)',A(i);r=A(i)(k:k)
if(r.ne.' ')then;A(i)(k:k)=s;s=r;endif;enddo
A(1)(k:k)=s;print'(A)',A;end
