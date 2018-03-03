function [ out] = printIDFT( input ,N,t)
subplot(4,2,[1,2]);
stem(t,transpose(input)) ; title('Input Function'); 
ow = 2*pi/N;
for i = 0:N-1
    sum(i+1) = 0;
    for j = 0:N-1
        sum(i+1) = sum(i+1) + input(j+1,1)*exp(1i*ow*i*j);
    end
    sum(i+1) = sum(i+1)/N;
end
subplot(4,2,3);   stem(t,angle(sum)); title('Angle of IDFT');
subplot(4,2,4);   stem(t,abs(sum)); title('Magnitude of IDFT');
Y = ifft(input);
subplot(4,2,5);   stem(t,angle(Y)); title('Angle of In-built Fn');
subplot(4,2,6);   stem(t,abs(Y));   title('Magnitude of In-built Fn');
Lec_input = conj(input);
X = conj(omega(N)*Lec_input)./N;
subplot(4,2,7); stem(t,angle(X));  title('Angle of lec-IDFT');
subplot(4,2,8); stem(t,abs(X));    title('Magnitude of lec-IDFT');
end
