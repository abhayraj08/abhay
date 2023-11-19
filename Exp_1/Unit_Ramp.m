clc
clear all
close all

t=-10:0.001:10;
length_t=length(t);
for ii=1:1:length_t
    if(t(ii)>0)
        y_t(ii)=t(ii);
    else
        y_t(ii)=0;
    end
end

plot(t,y_t)
axis([-10 10 -10 10])
xlabel('t')
ylabel('Unit Ramp')
grid
