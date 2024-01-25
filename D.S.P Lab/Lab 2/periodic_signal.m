% cos wk is a periodic signal
% cos ((3*pi)/7)*k
% N =(2*pi*m)/w
%   =(2*pi*m)/(3*pi)/7
%   =(14*m/3)
% m=3,N=14
n =-20:20;
x_n = cos(3 * pi * n/7);
subplot(2,1,1);
stem(n,x_n);
n =-20:20;
x_n = cos(3 * pi * n/7);
subplot(2,1,2);
plot(n,x_n);