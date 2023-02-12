m=0.5;
M=5;
L=1;
g=9.8;


A=[0 1 0 0;
  (m+M)/(M*L)*g 0 0 0;
   0 0 0 1;
   -m*g/M 0 0 0];
B=[0 -1/(M*L) 0 1/M ]';
C=[1 0 0 0;
   0 0 1 0 ];
D=[0 0]';

P=ss(A,B,C,D);
p=pole(P);
CMD=ctrb(A,B);
F=-place(A,B,[-1+1i -1-1i -2+2i -2-2i]);
X0=[0.1 0 0.1 0];
v=0;
Ob=obsv(A,C);
K1=place(A.',C.',[-100+1i -100-1i -200+2i -200-2i]).';
K2=place(A.',C.',[-1+1i -1-1i -2+2i -2-2i]).';
f1=figure(1) ;
set(f1,'position',[1 305 672 500])
subplot(321),plot(tout,x2( :,1),'k:',tout,xhat2( :,1),'r: '),title('angle'),grid,
subplot(323),plot(tout,x2( :,2),'k:',tout,xhat2( :,2),'r: '),title('dérivée angle'),grid
subplot(322),plot(tout,x2( :,3),'k:',tout,xhat2( :,3),'r: '),title('position'),grid,
subplot(324),plot(tout,x2( :,4),'k:',tout,xhat2( :,4),'r: '),title('dérivée position'),grid
subplot(325),plot(tout,u),title('la commande'),grid
