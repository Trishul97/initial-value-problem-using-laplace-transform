clc; 
clear; 
clf;
e=exp(1); %defined e^1 as e 
A= (e^2-1)/(2*e) ;
N=input('Enter the number of terms to be added=') %  number of terms to be summed over
n=1:1:N;
x=-2:0.01:4; % period upto which we see the expansion
B= ((e^2-1)/e).*(-1).^(n);
C=cos(n.*pi.*x');
E=((1-e^2)/e).*pi.*n.*(-1).^(n+1);
F=sin(n.*pi.*x');
fac= 1./(1+n.^2*pi^2);
yeven=A*ones(1,numel(x))+sum((B.*fac.*C)'); % Fourier series for given n
yodd= sum((E.*fac.*F)');
figure(1)
plot(x,yeven)
hold on 
plot(x,yodd)
hold off
xlabel('period')
ylabel('amplitude')
title('Fourier expansion for N=5')
legend('even expansion', 'odd expansion')
xlim([-2,4])
ylim([-1.6,1.6])