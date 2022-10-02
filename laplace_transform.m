clc;
clear; 
clf;
syms s x
F =(s^3 -5*s^2+ 3*s-4)/((s^2 +1)*(s^2-4*s+5))
y=ilaplace(F,x)
figure (1)
fplot(y,[0,3.5])
hold on
xlabel('x')
ylabel('solution y(x)')
legend('ilaplace solution')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
syms y(x) a b
eqn = diff(y,x,2)-4*diff(y,x)+5*y(x)-2*exp(x)+sin(x) == 0;
Dy = diff(y,x);
cond = [y(0)==1, Dy(0)==-1];
ySol(x) = dsolve(eqn,cond);
figure (2)
fplot(ySol,[0,3.5])
hold off
xlabel('x')
ylabel('solution y(x)')
legend('ilaplace solution','dsolve solution')

%% Analysis task 
% Only -sin(x) last term
syms y(x) a b
eqn = diff(y,x,2)-4*diff(y,x)+5*y(x)+sin(x) == 0;
Dy = diff(y,x);
cond = [y(0)==1, Dy(0)==-1];
ySol(x) = dsolve(eqn,cond);
figure (3)
fplot(ySol,[0,3.5])
hold off
xlabel('x')
ylabel('solution y(x)')
legend('with -sin(X) component')

%% only exponent term 

syms y(x) a b
eqn = diff(y,x,2)-4*diff(y,x)+5*y(x)-2*exp(x) == 0;
Dy = diff(y,x);
cond = [y(0)==1, Dy(0)==-1];
ySol(x) = dsolve(eqn,cond);
figure (4)
fplot(ySol,[0,3.5])
hold off
xlabel('x')
ylabel('solution y(x)')
legend('with exponent component')

%% with zero term 


syms y(x) a b
eqn = diff(y,x,2)-4*diff(y,x)+5*y(x) == 0;
Dy = diff(y,x);
cond = [y(0)==1, Dy(0)==-1];
ySol(x) = dsolve(eqn,cond);
figure (5)
fplot(ySol,[0,3.5])
hold off
xlabel('x')
ylabel('solution y(x)')
legend('with zero component')

