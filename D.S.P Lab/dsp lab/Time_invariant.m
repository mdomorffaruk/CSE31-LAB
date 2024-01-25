n= -10:10;
x=n;
y=2*x;
subplot(4,1,1)
stem(n,y)
title('original signal')
axis([0 10 0 25 ]);

y1= x-3;
subplot(4,1,2);
stem(n,y1)
title('x,after shifting')
axis([0 10 0 25 ]);

y2= 2*(n-3);
subplot(4,1,3);
stem(n,y2)
title('y,after shifting')
axis([0 10 0 25 ]);