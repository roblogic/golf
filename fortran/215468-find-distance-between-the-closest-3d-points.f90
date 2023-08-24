function d(A,n);real A(3,n);t=0
do 5 k=1,n-1;do 5 j=2,n;s=0;do i=1,3;s=s+(A(i,k)-A(i,j))**2;enddo
5 if(t==0)t=s;if(s>0.and.t>s)t=s;d=sqrt(t);end
