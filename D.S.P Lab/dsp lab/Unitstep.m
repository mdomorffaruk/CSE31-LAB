clc; close all; clear all;
n=input('enter the n value');
t=0:1:n-1;
y=ones(1,n);
figure(2)
subplot(2,2,2);
stem(t,y);
title('unit step');
