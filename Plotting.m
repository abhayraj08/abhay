clc
clear all

x=0:1:10;
y=0.5*x+1;

plot(x,y)
xlabel('X')
ylabel('Y')
axis([-1 10 0 6.5])

a=rand(5,5);
surf(a);