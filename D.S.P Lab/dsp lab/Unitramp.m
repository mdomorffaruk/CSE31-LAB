clc; close all; clear all;
n=input('enter the n value');
t=0:n;
y=ones(1,n);
figure(3)
subplot(2,1,1);
stem(t,t);
title('unit ramp');
