K = (16*(pi^2+log(10)^2)*log((50*sqrt(pi^2 +log(10)^2))/pi)^2)/(log(10)^2);
Kg = (8*log(50*sqrt(pi^2 +log(10)^2)/pi)-1)*log(10)^2/(1600*(pi^2+log(10)^2)*log(50*sqrt(pi^2+log(10)^2)/pi)^2);
s = tf('s');
H = 25*K/(s^2 + (5+500*K*Kg)*s + 25*K);
set(gcf,'color','w');
step(H);
export_fig problem5b.pdf;
stepinfo(H)