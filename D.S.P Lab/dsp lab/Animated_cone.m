%x=t.*cos(t)
%y=t.*sin(t)
%comet3(x,y,t)
%axis square


%For Circle
%t=0:0.001:2*pi
%x=cos(t)
%y=sin(t)
%comet(x,y)
%axis square

%Number_one

%x=-10:0.01:10
%y=2*x.^5+3*x.^4+5*x.^3+x.^2+7>x+6
%p=6*x.^3+8*x+3
%plot(x,y,'r',x,p,'b')

%Number_3

%x=0:0.01:5
%y=exp(-1.5*x).*sin(10*x)
%subplot(1,2,1)
%plot(x,y,'b')
%xlabel('x')
%ylabel('exp(-1.5x)*sin(10x)')
%axis([0 5 -1 1])
%p=exp(-2*x).*sin(10*x)
%subplot(1,2,2)
%plot(x,p,'r')
%xlabel('x')
%ylabel('exp(-2x)*sin(10x)')
%axis([0 5 -1 1])

%Num_5
%n=-20:20
%unit_resp1=n>=0;
%subplot(3,1,1)
%stem(n,unit_resp1);
%axis([-20 20 -2 2])
%xlabel('Time sample,n')
%ylabel('Amplitude')

%n=-20:20
%unit_resp2=n>=1;
%subplot(3,1,2)
%stem(n,unit_resp2);
%axis([-20 20 -2 2])
%xlabel('Time sample,n')
%ylabel('Amplitude')

%n=-20:20
%impluse=(unit_resp1+unit_resp2);
%subplot(3,1,3)
%stem(n,impluse);
%axis([-20 20 -2 2])
%xlabel('Time sample,n')
%ylabel('Amplitude')

 %Num_14
 
 %n=-10:1:10
 %y=2*n.^2
 %p=y.*sin(n)
 %stem(n,p)

t=0:0.001:2*pi
x=cos(t)
y=sin(t)
plot(x,y)
axis square


