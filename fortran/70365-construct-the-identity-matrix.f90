allocatable K(:,:);read*,n;allocate(K(n,n));K=0;forall(i=1:n)K(i,i)=1
do i=1,n;print*,(K(i,j),j=1,n);enddo;end
