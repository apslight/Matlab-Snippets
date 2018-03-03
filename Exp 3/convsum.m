function W = convsum(X,H)
len_X=length(X); 
len_H=length(H); 
X=[X,zeros(1,len_H)];  
H=[H,zeros(1,len_X)];
% y is output signal
for i=1:len_H+len_X-1
      Y(i)=0; 
      for j=1:len_X 
         if(i-j+1>0) 
             Y(i)=Y(i)+X(j)*H(i-j+1); 
         end 
      end 
end
stem(Y);
figure()
end