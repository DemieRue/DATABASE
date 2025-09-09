n = [0:0.1:1]'; % vector tiempo
ramp = n; %vector rampa unitaria
stem (n, ramp); %gráfica señal discreta
axis ([0 1 0 2]);
xlabel(' Tiempo (n)');
ylabel ('r(n)');
title ('Rampa' );