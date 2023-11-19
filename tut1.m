clc
A=2;
f=500;
step_size=(1/(6*2*f));
t=0:step_size:0.1;
y=2*cos(2*pi*f.*t);
% plot(t,y);
ss=Area_of_cir(A)
