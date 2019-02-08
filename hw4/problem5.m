s = tf('s');
S = s^2*(s + 100)/(s^2*(s + 100) + 3140*(s + 10));
set(gcf,'color','w');
bodemag(S);
export_fig problem5c.pdf;
[Gm, Pm, Wcg, Wcp] = margin(S);

T = 3140*(s + 10)/(s^2*(s + 100) + 3140*(s + 10));
p = pole(T);
z = zero(T);
step(T);
export_fig problem5f.pdf;

T0 = 9420*(s^3 + 10.2357*s^2 + 11.69*s + 93.3333)/(s^5 + 100.707*s^4 + 9518.7*s^3 + 99220*s^2 + 110120*s + 879200);
p0 = pole(T0);
z0 = zero(T0);

dP = 2*s^2/(s^2 + 0.707*s + 28);
bodemag(1/T, dP);
export_fig problem5i.pdf;

T1 = (0.00314*s + 0.0000314)/(s^3 + 0.1*s^2 + 0.00314*s + 0.0000314);
p1 = pole(T1);
bodemag(1/T, dP, 1/T1);
export_fig problem5k.pdf;

step(T1);
export_fig problem5l.pdf;

T2 = (0.00942*s^3 + 0.0022294*s^2 + 0.0879222*s + 0.00008792)/(s^5 + 0.807*s^4 + 28.0801*s^3 + 2.80223*s^2 + 0.0879222*s + 0.00008792);
p2 = pole(T2);