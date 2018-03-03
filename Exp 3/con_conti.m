function out = con_conti(x,h,t1)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
len = length(x);
i = 1;
for r =-10:0.02:10-0.02
  convo = @(t) x(t).*h(r-t);
  y(1,i) =  integral(convo,-100,100);
  i = i +1 ;
end  
plot(t1,y);
figure;
end

