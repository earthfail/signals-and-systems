close all;
clear;
% clc; % -- optional

t=linspace(-5,5,1001);

ti=abs(t)<=1;
x1=(2-2*abs(t)).*ti;
% x1=sin(1.5*pi*t);
x2=0.5*cos(2*t)+1/3*sin(3*t);

y1=conv(x1,x2,'same')*(t(2)-t(1)); % TODO: check if valid

fig1=figure();
nplots=3;
plots_a=cell(nplots,3);
plots(1,:)={x1,'r','x1'};
plots(2,:)={x2,'g','x2'};
plots(3,:)={y1,'b','y1'};
for i=1:nplots
    a=subplot(nplots,1,i);
    plot(a,t,plots{i,1},plots{i,2});
    xlabel(a,'Time (sec)','Interpreter','latex');
    xlim(a,[-4,4]);
    ylabel(a,'Signal Amplitude')
    title(a,plots{i,3});
end

%% parts 6,7,8,9
w=linspace(-20,20,1001);
X1=DgbdCtft(t,x1,w);
X2=DgbdCtft(t,x2,w);

Y2=X1.*X2;
fig2=figure(2);
nplots=3;
plots=cell(nplots,3);
plots(1,:)={abs(X1),'r','|X1|'};
plots(2,:)={abs(X2),'g','|X2|'};
plots(3,:)={abs(Y2),'b','|Y1|'};
for i=1:nplots
    a=subplot(nplots,1,i);
    plot(a,w,plots{i,1},plots{i,2});
    xlabel(a,'Frequency $$\omega$$ ($$\frac{Rad}{sec}$$)','Interpreter','latex');
    ylabel(a,'Power Spectrum (dB)')
    title(a,plots{i,3});
end
Y2Inv=DgbdInvCtft(w,Y2,t);
% plot(t,[Y1;Y2Inv])
%% part3
% m=2;
% g=9.8;
% l=0.8;
% omega=sqrt(g/l);