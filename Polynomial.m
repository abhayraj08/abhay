clc
close all
clear all

y=[0,2,4,6,5,7];
plot(y);

%plot exponential graph
t=0:0.01:10;
y_t=exp(-0.5*t);
plot(t,y_t)