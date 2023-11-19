clc
% clear all
close all

t=-10:0.01:10;
length_t=length(t);
for ii=1:1:length_t
    if (t(ii)>0 && t(ii)<1)
        y_t(ii)=1;
    else
        y_t(ii)=0;
    end
end

plot(t,y_t)
axis([-5 5 -2 2])

