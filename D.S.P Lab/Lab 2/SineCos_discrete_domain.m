n =-10 : 10;
%x_n =sin(2*pi * 0.1*n);

x_n =sin(pi/2-((2*pi*0.1*n)));
subplot(2,1,1);
stem(n,x_n);
xlabel('Time Sample');
ylabel('Amplitude');
title('sine to cos funtion');

x_n =cos(2*pi*0.1*n);
subplot(2,1,2);
stem(n,x_n);
xlabel('Time Sample');
ylabel('Amplitude');
title('cos function');