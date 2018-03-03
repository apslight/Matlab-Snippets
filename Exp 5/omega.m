function [out] = omega(n)
om = 2*pi/n;
for i=0:n-1
    for j=0:n-1
        k = i*j;
        out(i+1,j+1) = cos(om*k)-1i*sin(om*k);
    end
end
end
