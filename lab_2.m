clc
clear all
close all

step_size=0.001;
t=-10:step_size:10;
length_t=length(t);
y_t=zeros(1, length(t));

%a=0.5;
%for ii=1:1:length_t
%    if (t(ii)<0)
%        y_t(ii)=exp(a*t(ii));
%    else
%        y_t(ii)=exp(-a*t(ii));
%    end
%end

for ii=1:1:length_t
    if (t(ii)<0)
        y_t(ii)=0;
    elseif (t(ii)<1)
        y_t(ii)=2.5;
    elseif (t(ii)<2)
        y_t(ii)=3.5;
    elseif (t(ii)<4)
        y_t(ii)=2.5;
    else
        y_t(ii)=0;
    end
end 

plot(t, y_t)
axis ([-1 5 0 5])
data=(abs(y_t)).^2;
engery_s=my_int_fun(data, step_size)