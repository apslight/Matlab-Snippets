function [out] = printDFT( input,n,t )
subplot(3,2,[1,2]);  stem(t,transpose(input)) ; title('Input Function');
subplot(3,2,3);
X = omega(n)*input;  stem(t,angle(X)); title('Angle of DFT');
subplot(3,2,4);    stem(t,abs(X)); title('Magnitude of DFT');
Y = fft(input);
subplot(3,2,5);   stem(t,angle(Y)); title('Angle of In-built Fn');
subplot(3,2,6);   stem(t,abs(Y));   title('Magnitude of In-built Fn');
end

