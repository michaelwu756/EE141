s = tf('s');
L = 10^5 * 5 * (0.02 * s + 1)^2 / ((s + 1)^3 * (10^-3 * s + 1)^2);
set(gcf,'color','w');
bode(L);
export_fig problem5a.pdf;

L2 = 5 * 10^5 / ((2.5 * 10^3 * s + 1) * (10^-3 * s + 1)^2);
hold on;
bode (L2);
hold off;
export_fig problem5c.pdf;

[Gm1, Pm1, Wcg1, Wcp1] = margin(L);
[Gm2, Pm2, Wcg2, Wcp2] = margin(L2);

nyquist(L);
hold on;
nyquist(L2);
hold off;
export_fig problem5f-1.pdf;

nyquist(L);
hold on;
nyquist(L2);
hold off;
axis([-10 1 -2 2]);
export_fig problem5f-2.pdf;
