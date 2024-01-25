n = -20: 20;
ramp_n = (n>=0) .* n;
stem(n,ramp_n);
axis([-20 20 -10 20]);
xlabel('Time sample');
ylabel('Amplitude');