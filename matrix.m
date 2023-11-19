a=zeros(4,5)
b=ones(2,5);
a(3:4,:)=b;

m=zeros(6,6);
r=ones(1,6);
c=ones(6,1);

clear all;
close all;
clc;

theta=0:0.01*pi:2*pi;
y_theta=sin(theta);
plot(theta, y_theta);
