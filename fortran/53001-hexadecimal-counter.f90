character(16)H;H='0123456789abcdef'
print*,((H(i:i)//H(j:j),' ',j=1,16),i=1,16)
end
