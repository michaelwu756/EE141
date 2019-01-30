s = tf('s');
G = (s + 1.05)/((s + 1)*(s + 20)*(s^2 + 4*s + 8));
Ga = 21/(400*(s^2 + 4*s + 8));
set(gcf,'color','w');
hold on;
step(G);
step(Ga);
hold off;
export_fig problem8b.pdf;