real,allocatable,dimension(:,:)::A,B,U;read*,n;allocate(A(n,n));B=A;U=A;read*,((A(i,j),j=1,n),i=1,n)
do i=1,n;do j=1,n;U(i,j)=merge(1,0,i==j);B(i,j)=merge(1.,1/A(i,j),A(i,j)==0);enddo;enddo
do 4 l=1,99;do 4 i=1,n;do 4 j=1,n;s=U(i,j);do k=1,n;m=i;if(k/=m)s=s-A(i,k)*B(k,j);enddo;B(m,j)=s/A(i,m)
4 continue;print'(3(x,f9.6))',((B(i,j),j=1,n),i=1,n)
end
