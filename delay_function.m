clc
clear all
close all

step_size=0.01;
t=-10:step_size:10;
length_t=length(t);
for ii=1:1:length_t
    if (t(ii)==0)
        v_t(ii)=1/step_size;
    else
        v_t(ii)=0;
    end
end

% plot(t, v_t)
Index = shifting...
    ( length_of_signal_x, mid_point_of_t, To )