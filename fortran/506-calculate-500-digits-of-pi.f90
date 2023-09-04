integer::v(3350)=2;x=1E5;j=0;do n=1,101;do l=3350,1,-1
m=x*v(l)+i*l;i=m/(2*l-1);v(l)=m-i*(2*l-1);enddo
k=i/x;print'(I5.5)',j+k;j=i-k*x;enddo;end
