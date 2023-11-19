clc
clear all
close all

t=-10:0.001:10;
length_t=length(t);
for ii=1:1:length_t
    if(t(ii)==2)
        y_t(ii)=1/0.001;
    else
        y_t(ii)=0;
    end
end
plot(t,y_t)
xlabel('t')
ylabel('delta')
        

clc
clear all
close all

t=-10:0.001:10;
length_t=length(t);
for ii=1:1:length_t
    if(t(ii)>=0)
        y_t(ii)=1;
    else
        y_t(ii)=0;
    end
end
plot(t,y_t);
axis([-10 10 -0.5 1.5]);
xlabel('t');
ylabel('delta');
        