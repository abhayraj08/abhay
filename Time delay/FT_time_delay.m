clc
clear all
close all

step_omega=0.1*pi;

step_size_t=0.01;
t=-40:step_size_t:40;
length_t=length(t);
mid_point_t=(length_t-1)/2;

omegax=-(1/step_size_t)*pi:step_omega:(1/step_size_t)*pi;
length_omega=length(omegax);

for ii=1:length_omega
    expo_omega(ii,:)=exp(-1j*omegax(ii).*t);
end


[x_t_1] = signal_gen(t, 4, 1, 0.7, 1, 10,...
    step_size_t, length_t);

[x_t_2] = delay_signal...
    (x_t_1, 3, length_t, mid_point_t, t);

subplot(3,1,1), plot(t, [x_t_1; x_t_2])

[X_omega_1, omegax] = computation_of_FT(x_t_1, step_size_t, expo_omega, omegax, length_omega);
[X_omega_2, omegax] = computation_of_FT(x_t_2, step_size_t, expo_omega, omegax, length_omega);
%Magnitute spectrum
X_omega_Mag_1=abs(X_omega_1);
X_omega_Mag_2=abs(X_omega_2);

%Phase of the 
Angle_X_omega_1=atan(imag(X_omega_1)./real(X_omega_1) );
Angle_X_omega_2=atan(imag(X_omega_2)./real(X_omega_2) );

%theoertical calculation of phase and magnitute

for ii=1:length(omegax)
    X_omega_Mag_the(ii)=0;
    
    Angle_X_omega_the(ii)=0;  
    
end

subplot(3,1,2), plot(omegax, [X_omega_Mag_1; X_omega_Mag_2] );
subplot(3,1,3), plot(omegax, [Angle_X_omega_1; Angle_X_omega_2] );
pause(1)
figure, plot(omegax, [X_omega_Mag_1; X_omega_Mag_2] );

% [x_t_recover, t] = computation_of_IFT...
%     (X_omega, omegax, step_omega, t);

% subplot(2,2,4), plot(t, real(x_t_recover));