clc; close all; clear all;
n=input('enter the length of i/p sequency ');
t=0:n
a=input('enter the a value :');
y=exp(a*t);figure(4)
subplot(2,2,4);
plot(t,y);
xlabel('x-axis');ylabel('y-axis');
title('unit exponential');
