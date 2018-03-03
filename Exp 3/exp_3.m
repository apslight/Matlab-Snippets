clc
close all
clear all
t1 = linspace(-10,10,1000); 
X1 = exp(-t1).*unitstep(t1);
H1 = exp(-2*t1).*unitstep(t1);
X2 = @(t1)exp(-t1).*unitstep(t1);
H2 = @(t1)exp(-2*t1).*unitstep(t1);
len = length(X2);
i = 1;
for r =-10:0.02:10-0.02
  convo = @(t) X2(t).*H2(r-t);
  y(1,i) =  integral(convo,-100,100);
  i = i +1 ;
end  
plot(t1,y);
figure;
w=conv(X1,H1);
plot(w);
