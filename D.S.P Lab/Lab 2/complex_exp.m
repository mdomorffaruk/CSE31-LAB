n =-20:20;

x_n = exp((-0.1 + 0.3*j)*n);

subplot(4,1,1);
stem(n,real(x_n));
title('real wave');
xlabel('time');
ylabel('real');

subplot(4,1,2);
stem(n,imag(x_n));
title('imaginery wave');
xlabel('time');
ylabel('imaginery');


subplot(4,1,3);
stem(n,abs(x_n));
title('absulate wave');
xlabel('time');
ylabel('abs');

subplot(4,1,4);
stem(n,angle(x_n));
title('angle wave');
xlabel('time');
ylabel('angle');