s = tf('s');
H = sqrt(2) / (s^2 + s + sqrt(2));
set(gcf,'color','w');
step(H);
export_fig problem4c.pdf;
stepinfo(H)

Ho = sqrt(2) / (s * (s + 1));
nyquist(Ho);
plot_unit_circle();
hold off;
xlim([-3 3])
ylim([-3 3])
export_fig problem4d.pdf;