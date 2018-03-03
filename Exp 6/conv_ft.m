n=0:49;
x=(0.8.^n).*u(n);
h=(0.3.^n).*u(n);
X= omega(50)*transpose(x);
H= omega(50)*transpose(h);
C= X.*H;

ow=2*pi/50;
for i = 0:49
  sum(i+1) = 0;
     for j = 0:49
        sum(i+1) = sum(i+1) + C(j+1,1)*exp(1i*ow*i*j);
     end
  sum(i+1) = sum(i+1)/50;
end
subplot(2,1,1)
stem(n,sum)
title('Convolution using DFT');

sum2= cconv(x,h,50);
subplot(2,1,2)
stem(n,sum2)
title('Inbuilt function');

%Correlation

x=(0.8.^n).*u(n);
h1=(0.3.^n).*u(n);
h=(0.3.^-n).*u(-n);
X= omega(50)*transpose(x);
H= omega(50)*transpose(h);
C= X.*H;

figure;
ow=2*pi/50;
for i = 0:49
sum(i+1) = 0;
for j = 0:49
sum(i+1) = sum(i+1) + C(j+1,1)*exp(1i*ow*i*j);
end

sum(i+1) = sum(i+1)/50;
end
subplot(2,1,1)
stem(n,sum)
title('Correlation using DFT');

sum2= xcorr(x,h1);
subplot(2,1,2)
stem(sum2)
title('Inbuilt function');

