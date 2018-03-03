function out = rect(t,k)
uni1 = t>=k;
uni2 = t>=-k;
out = uni2- uni1;
end

