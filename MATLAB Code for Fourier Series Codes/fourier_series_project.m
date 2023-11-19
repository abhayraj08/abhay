clc
clear all
close all

time_period=0.2;
step_size_t=0.0001;
t=0:step_size_t:time_period;
tt=length(t);

omega_o=2*pi/time_period;

No_of_Fourier_coff=25;
kk=-No_of_Fourier_coff:1:No_of_Fourier_coff;

for ii=1:tt
    if(t(ii)<=0.25)
        v_t(ii)=2;
    elseif(t(ii)>0.25 && t(ii)<0.75)
        v_t(ii)=0;
    else
        v_t(ii)=2;
    end
v_t(ii)=2*sin(2*pi*5*t(ii));
end


plot(t, v_t)
xlabel('time (t)')
ylabel('v(t)')
grid
pause


for ii=1:1:(2*No_of_Fourier_coff+1)
    temp1=v_t.*exp(-1j*omega_o*kk(ii).*t);
    [int_ans] = my_int_fun(temp1, step_size_t);
    a_k(ii)=(1/time_period)*(int_ans);
end

stem(kk, abs(a_k))