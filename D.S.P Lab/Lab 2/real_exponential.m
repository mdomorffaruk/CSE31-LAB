n = -20 :20;
A = 2;
a=1.2;
x_n = A*(a.^n);
subplot(2,1,1);
stem(n,x_n);
title('Incrementing exp');
xlabel('Time Sample');
ylabel('Amplitude');

a=0.9
x_n = A*(a.^n);
subplot(2,1,2);
stem(n,x_n);
title('Decrementing exp');
xlabel('Time Sample');
ylabel('Amplitude');