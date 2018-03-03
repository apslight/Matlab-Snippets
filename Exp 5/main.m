clc; close all ;clear all;
t1 = 0:1:49; t2 = 0:1:99;
N1 = 50 ; T1 = 1/100; N2 = 100; T2= 1/50;
for n = 0:N1-1
    F1(n+1,1) = T1*sin(20*pi*n*T1); %part A-(i)
    F4(n+1,1) = triangularPulse(2*pi*(n-8)/N1); %part B-(i)
end 
for n = 0:N2-1
    F2(n+1,1) = T2*exp(1i*2*pi*(31/3)*n*T2); %part A-(ii)
    F3(n+1,1) = 3*power(0.8,n*T2)*cos(0.1*pi*n*T2); %part A-(iii)
    F5(n+1,1) = 1/(1-(5*exp(-1i*12*pi*(n/N2)))); %part B-(ii)
end 
printDFT(F1 , N1 ,t1); figure();
printDFT(F2 , N2 ,t2); figure();
printDFT(F3 , N2 ,t2); figure();
printIDFT(F4 , N1 ,t1); figure();
printIDFT(F5 , N2 ,t2);


