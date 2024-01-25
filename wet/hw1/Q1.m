%% NOT FOR SUBMISSION
%% DO NOT SUBMIT
close all;
clear;
% clc; % -- optional
h=hadamard(8);

[V,D]=eig(h);

h_diag=V\h*V;

t=0:0.1:10;
f=0.5;
x=cos(2*pi*f*t)+1j*sin(2*pi*f*t);

% figure(1);
plot(t,[real(x);imag(x);abs(x);angle(x)])
xlim=[0,10];
xlabel("Time (sec)");
%% findpeaks
[pk,lk]=findpeaks(real(x));
ha=plot(t,real(x),t(lk),pk,'o');
xlim=[0,10];
ylim=[-1.1,1.1];
xlabel("Time (sec)");
ylabel("Real(x),Peaks(O)");
title("DGBD Q1");