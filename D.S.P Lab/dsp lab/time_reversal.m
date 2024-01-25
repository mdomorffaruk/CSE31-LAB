%n=[0,1,2]
n=input("Enter the input range:")
%x_n=[1,2,3]
x_n=input('Enter the same range for signal:')
subplot(2,1,1)
stem(n,x_n,'linewidth',3)
grid on
axis([-5 5 -5 5])
x_n1=fliplr(x_n)
n1=fliplr(-n)
subplot(2,1,2)
stem(n1,x_n1,'linewidth',3)
grid on
axis([-5 5 -5 5])
