clc
clear all
close all

step_size=0.01*pi;
thetax=0:step_size:pi/2;
y_theta=sin(thetax);
answer=(step_size/2)*...
    (y_theta(1,1)+y_theta(1,end)...
    +2*sum(y_theta(1,2:end-1)));

clear all

step_size=0.001;
x=-2:step_size:2;
y_x=((x.^3).*cos(x./2)+(1/2))...
    .*(sqrt(4-x.^2));
answer=(step_size/2)*...
    (y_x(1,1)+y_x(1,end)...
    +2*sum(y_x(1,2:end-1)));