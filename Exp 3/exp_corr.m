clc ; close all ; clear all
t1 = linspace(-10,10,1000);
t2 = linspace(-10,10,100);

X11 = @(t1)(unitstep(t1+0.5) - unitstep(t1-0.5));
H11 = @(t1)(t1.*(unitstep(t1+0.5) - unitstep(t1-0.5)));
cor_conti(X11,H11,t1);

X12 = @(t1) (exp(-t1).*unitstep(t1));
H12 = @(t1) (exp(-2*t1).*unitstep(t1));
cor_conti(X12,H12,t1);

X13 = @(t1)(unitstep(t1+0.5) - unitstep(t1-0.5));
H13 = @(t1)(unitstep(t1+0.5) - unitstep(t1-0.5));
cor_conti(X13,H13,t1);

X21 =  unitstep(t2) - unitstep(t2-8);
H21 = sin((pi*t2)./4).*X21;
corr_dis(X21,H21);
w =xcorr(X21,H21);
stem(w);
figure();

X22 = ((0.8).^t2).*unitstep(t2);
H22 = ((0.3).^t2).*unitstep(t2);
corr_dis(X22,H22);
w =xcorr(X22,H22);
stem(w);
figure();

X23 = (t2.*unitstep(t2));
H23 = (t2.*unitstep(t2));
corr_dis(X23,H23);
w =xcorr(X23,H23);
stem(w);






