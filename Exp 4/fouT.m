clc; clear all; close all;
t = linspace(-50,50,1000); w = linspace(-50,50,1000);
x = @(t)rect(t,0.5);
j =1;
for i=-50:0.1:50-0.1   
  Xj = @(t)x(t).*exp(-1i.*t.*i);
  % a) x(t)
  graph1(1,j) = integral(Xj,-100,100);
  % b) x(t + 8)
  graph2(1,j) = graph1(1,j).*exp(1i*i*8);
  % c) exp(j*4*t)*x(t)
  X3 = @(t)x(t).*exp(-1i.*t.*(i-4));
  graph3(1,j) = integral(X3,-100,100);
  % d) 4x(t ? 7) ? 2x(t)
  graph4(1,j) = 3*graph1(1,j).*exp(1i*i*7) - 2*graph1(1,j);
  % e) x(-t)
  X5 = @(t)x(-t).*exp(1i.*t.*i);
  graph5(1,j) = integral(X5,-100,100);
  % f) x(-6t)
  X6 = @(t)x(-t).*exp(1i.*t.*(i/6));
  graph6(1,j) = integral(X6,-100,100)./6;
  % g) conj(x(t))
  X7 = @(t)conj(x(t)).*exp(1i.*t.*i);
  graph7(1,j) = integral(X7,-100,100);  
  % h) d/dt(x(t))
  graph8(1,j) = graph1(1,j)*(1i*i);
  % i) ? x(t)
  graph9(1,j) = graph1(1,j)./(1i*i);
  % j) (t^5)*x(t)
  X10 = @(t)x(t).*exp(-1i.*t.*i).*power(t,5);  
  graph10(1,j) = integral(X10,-100,100);
  % l) x (4t/3) conv x(-t +5/6)
  X111 = @(t)x(-t).*exp(1i.*(t-5/6).*i);
  graph111(1,j) = integral(X111,-100,100);
  X112 = @(t)x(t).*exp(1i.*t.*(3*i/4));
  graph112(1,j) = integral(X112,-100,100).*(3/4);
  % l) x (4t/3) * x(-t +5/6)
  X121 = @(t)x(-t).*exp(1i.*(t-5/6).*i);
  graph121(1,j) = integral(X121,-100,100);
  X122 = @(t)x(t).*exp(1i.*t.*(3*i/4));
  graph122(1,j) = integral(X122,-100,100).*(3/4);
  j = j +1;
end  

subplot(3,2,1);  plot(w,graph1);
subplot(3,2,2);  plot(w,graph2);
subplot(3,2,3);  plot(w,graph3);
subplot(3,2,4);  plot(w,graph4);
subplot(3,2,5);  plot(w,graph5);
subplot(3,2,6);  plot(w,graph6);
figure();
subplot(3,2,1); plot(w,graph7);
subplot(3,2,2); plot(w,graph8);
subplot(3,2,3); plot(w,graph9);
subplot(3,2,4); plot(w,graph10);
subplot(3,2,5); plot(w,graph111.*graph112);
subplot(3,2,6); 
plot(linspace(-10,10,1999) ,conv(graph121,graph122));