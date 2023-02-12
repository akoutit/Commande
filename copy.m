subplot(321),plot(tout,x( :,1),tout,xhat( :,1),'r ',tout,xhat2( :,1),'b '),title('angle'),grid,
subplot(323),plot(tout,x( :,2),tout,xhat( :,2),'r ',tout,xhat2( :,2),'b '),title('dérivée angle'),grid
subplot(322),plot(tout,x( :,3),tout,xhat( :,3),'r ',tout,xhat2( :,3),'b '),title('position'),grid,
subplot(324),plot(tout,x( :,4),tout,xhat( :,4),'r ',tout,xhat2( :,4),'b '),title('dérivée position'),grid
subplot(325),plot(tout,u),title('la commande'),grid

subplot(321),plot(tout,x( :,1)),title('angle'),grid,
subplot(323),plot(tout,x( :,2)),title('dérivée angle'),grid
subplot(322),plot(tout,x( :,3)),title('position'),grid,
subplot(324),plot(tout,x( :,4)),title('dérivée position'),grid
subplot(325),plot(tout,u),title('la commande'),grid

subplot(321),plot(tout,x( :,1),tout,xhat( :,1),'r: ',tout,xhat1( :,1),'k: '),title('angle'),grid,
subplot(323),plot(tout,x( :,2),tout,xhat( :,2),'r: ',tout,xhat1( :,2),'k: '),title('dérivée angle'),grid
subplot(322),plot(tout,x( :,3),tout,xhat( :,3),'r: ',tout,xhat1( :,3),'k: '),title('position'),grid,
subplot(324),plot(tout,x( :,4),tout,xhat( :,4),'r: ',tout,xhat1( :,4),'k: '),title('dérivée position'),grid
subplot(325),plot(tout,u),title('la commande'),grid