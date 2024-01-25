n= -20:20;
x_n = exp((-0.1+0.3*j)*n);
subplot(4,1,1);
stem(n,real(x_n));
title('time');
xlabel('Time ');
ylabel('real');

subplot(4,1,2);
stem(n,imag(x_n));
title('Imaginary wave');
xlabel('Time ');
ylabel('Imaginary');

subplot(4,1,3);
stem(n,abs(x_n));
title('absulate wave');
xlabel('Time ');
ylabel('abs');


subplot(4,1,4);
stem(n,angle(x_n));
title('angle wave');
xlabel('Time ');
ylabel('angle');


