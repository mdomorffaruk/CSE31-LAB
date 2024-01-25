n=-3:3
y=[-2,-1,0,1,2,3,4]
subplot(2,1,1)
stem(n,y)
grid on
axis([-5 5 -5 5])
x_n=n+3
subplot(2,1,2)
stem(x_n,y)
grid on
axis([-5 5 -5 5])