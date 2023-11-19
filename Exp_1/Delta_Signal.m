clc
clear all
close all

t=-10:0.001:10;
length_t=length(t)
for ii=1:1:length_t
    if (t(ii)>0)
        y_t(ii)=0;
    elseif (t(ii)<0)
        y_t(ii)=0;
    else
        y_t(ii)=10;
    end
end


plot(t,y_t)
axis ([-5 5 -11 11])
xlabel('t')
ylabel('Delta')
grid