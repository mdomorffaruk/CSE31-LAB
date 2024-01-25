n= -10:0.005:10;
x=n;
y=cos(x);
subplot(4,1,1)
stem(n,y)
title('original signal')
axis([0 5 0 5 ]);

y1= (n-3)
subplot(4,1,2);
plot(n,y1)
title('y,after shifting')
axis([0 10 0 25 ]);

y2= cos(y1);
subplot(4,1,3);
plot(n,y2)
title('y,after shifting')
axis([0 2 0 2 ]);