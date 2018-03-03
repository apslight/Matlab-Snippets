function [out] = rec(t,k)
out =0;
for i=-10:0.02:10
    if(mod(i,5)==0)
        uni1 = t>=i-k;
        uni2 = t>=i+k;
        out = out + uni1 - uni2;
    end
end
plot(t,out);
