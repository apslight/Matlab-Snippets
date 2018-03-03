clc; clear all; close all;
t = linspace(-10,10,10000);
x =@(t)rec(t,0.5);
T = 5 ;  j =1;
w1 = (2*pi)./T;
ci = @(t,n)x(t).*exp(-1i*w1*n.*t)./T;
temp0 = 0 ; temp1 = 0 ; temp2 =0 ; temp3=0; temp4 = 0 ;temp5 =0 ;
temp6 =0 ;temp7 =0;temp81 =0;temp82 = 0;temp9 =0;
for i=-100:1:100-1
    % Normal input function
       c0(1,j) = integral(@(t)ci(t,i),0,T);
       temp0 = temp0 + c0(1,j).*exp(1i*w1*i.*t);
    % a) x(t - 8)
       temp1 = temp1 + c0(1,j).*exp(1i*w1*i.*t).*exp(-1i*w1*i*8);
    % b) 3x(t + 9) - 5x(t) 
       temp2 = temp2 + 3*c0(1,j).*exp(1i*w1*i.*t).*exp(1i*w1*i.*9) - 5*c0(1,j).*exp(1i*w1*i.*t);
    % c) x(-t)
       temp3 = temp3 + c0(1,j).*exp(-1i*w1*i.*t);
    % d) x(-t/9)
       temp4 = temp4 + c0(1,j).*exp(-1i*w1*i.*t*(1/9));
    % d) x*(t)
       temp5 = temp5 + conj(c0(1,j)).*exp(-1i*w1*i.*t);
    % e) d(x(t))/dt
       temp6 = temp6 +  c0(1,j).*exp(1i*w1*i.*t).*(1i*w1*i);
    % f) ? x(t)
       if(i~=0)
        temp7 = temp7 +  c0(1,j).*exp((1i*w1*i.*t))./((1i*w1*i));
       else
        temp7 = temp7 +  c0(1,j).*exp((1i*w1*i.*t)).*(t);   
       end 
    % g) x(7*t/12)*x(t -8/3) 
       temp81 = temp81 + c0(1,j).*exp(1i*(7/12)*w1*i.*t);     
       temp82 = temp82 + c0(1,j).*exp(1i*w1*i.*t).*exp(-1i*w1*i.*(8/3));
    % h) exp(j*(6*pi/T)*t)*x(t)
       temp9 = temp9 + c0(1,j).*exp(1i*w1*(i-3).*t);
     j = j + 1;
end
subplot(5,2,1);  plot(t,temp0);
subplot(5,2,2);  plot(t,temp1);
subplot(5,2,3);  plot(t,temp2);
subplot(5,2,4);  plot(t,temp3);
subplot(5,2,5);  plot(t,temp4);
subplot(5,2,6);  plot(t,temp5);
subplot(5,2,7);  plot(t,temp6);
subplot(5,2,8);  plot(t,temp7);
subplot(5,2,9);  plot(t,temp81.*temp82);
subplot(5,2,10); plot(t,temp9);