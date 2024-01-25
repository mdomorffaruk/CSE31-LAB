n = -20: 20;
unit_n = n >= 0;
subplot(3,1,1)
stem(n,unit_n);
axis ([-20 20 -2 2]);
xlabel('Time sample');
ylabel('Amplitude');

n = -20: 20;
unit_n1 = n >= 1;
subplot(3,1,2)
stem(n,unit_n1);
axis ([-20 20 -2 2]); 
xlabel('Time sample');
ylabel('Amplitude');

n = -20: 20;
delta_n = (unit_n   - unit_n1);
subplot(3,1,3)
stem(n,delta_n);
axis ([-20 20 -2 2]); 
xlabel('Time sample');
ylabel('Amplitude');