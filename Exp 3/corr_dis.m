function W = corr_dis(X,H)
len_X=length(X);
len_H=length(H);

% y is output signal
for i=1:len_H+len_X-1
   Y(i)=0;
     for j=1:len_H
       if(i-j+1 > 0 && j >i-len_X)
          Y(i)=Y(i)+X(j)*H(-i+j+len_X);
       end
     end
end
stem(Y);
figure();
end