clc ; close all ; clear all
t1 = linspace(-10,10,1000);
t2 = linspace(-10,10,100);
% Question A(i)   
X11 = @(t1) (exp(-t1).*unitstep(t1));
H11 = @(t1) (exp(-2*t1).*unitstep(t1));
con_conti(X11,H11,t1);
% Question A(ii)
X12 = @(t1) (sin(pi*t1).*(unitstep(t1)-unitstep(t1-1)));
H12 = @(t1) (1.5 *(unitstep(t1)- unitstep(t1-1.5)) - unitstep(t1 - 2) + unitstep(t1-2.5));
con_conti(X12,H12,t1);
% Question B(i)
X21 =  unitstep(t2) - unitstep(t2-8);
H21 = sin((pi*t2)./4).*X21;
convsum(X21,H21);
stem(conv(X21,H21),'.--r');
legend('my conv','matlab conv');
figure();
% Question B(ii)
X22 = ((0.8).^t2).*unitstep(t2);
H22 = ((0.3).^t2).*unitstep(t2);
convsum(X22,H22);
stem(conv(X22,H22),'.--r');
legend('my conv','matlab conv');
figure();
% Question B(iii)
X23 = ((exp(1)).^-t2).*unitstep(t2);
H23 = ((2).^-t2).*unitstep(t2);
convsum(X23,H23);
stem(conv(X23,H23),'.--r');
legend('my conv','matlab conv');