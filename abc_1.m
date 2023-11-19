clc
clear all
x=pi/5;
lhs=cos(x/2)^2;
rhs=(tan(x)+sin(x))/(2*tan(x));
z=2*sqrt(2)*exp(pi/4i);

clc
clear all
A=2;
f=500;
step_size=(1/(6*2*f));
t=0:step_size:0.1;
y=2*cos(2*pi*f.*t);
plot(t,y);
radius(5);
