s = tf('s');
H1 = 20/(s^3 + 6*s^2 + 9*s + 20);
H2 = 4/(s^2 + s + 4);
set(gcf,'color','w');
hold on;
impulse(H1);
impulse(H2);
hold off;
export_fig problem6e.pdf;