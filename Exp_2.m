clc
clear all
close all

step_size=0.001;
t=-10:step_size:10;
length_t=length(t);
y_t=zeros(1, length(t));

No_of_Fourier_coff=25;
kk=;

for ii=1:1:length_t
    if (t(ii)<0)
        y_t(ii)=0;
    elseif (t(ii)<0.25)
        y_t(ii)=2;
    elseif (t(ii)<0.75)
        y_t(ii)=0;
    elseif (t(ii)<1)
        y_t(ii)=2;
    else
        y_t(ii)=0;
    end
end 

for ii=1:1:(2*No_of_Fourier_coff+1)
    temp1=v_t.*exp(-1j*omega_o*kk(ii).*t);
    [int_ans]=my_int_fun(temp1, step_size_t);
    a_k(ii)=(1/time_period)*(int_ans);
end

plot(t, y_t)
axis([-1 2 -1 3])