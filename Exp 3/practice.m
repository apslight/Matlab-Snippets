clc ; close all ; clear all
t = linspace(-10,10,1000);
t2 = linspace(-20,20,1999);
% Question A(i)   
X11 = @(t) (sin(pi/4))*(unitstep(t) - unitstep(t - 5));
H11 = @(t) exp(-t*3).*(unitstep(t) - unitstep(t-4));


X12 = (sin(pi/4))*(unitstep(t) - unitstep(t - 5));
H12 = exp(-t*3).*(unitstep(t) - unitstep(t-4));
convsum(X12,H12);

w = conv(X12,H12);
plot(t2,w);


