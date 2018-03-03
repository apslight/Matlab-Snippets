function out = cor_conti(x,h,t1)
i = 1;
for r =-10:0.02:10
   convo = @(t) x(t).*h(t-r);
   out(1,i) = integral(convo,-10,10);
   i = i +1 ;
end
out(:,1001) = [];
plot(t1,out);
figure()
end