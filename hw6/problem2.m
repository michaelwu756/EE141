s = tf('s');
H = 3/(s * (s + 1) * (s + 3));
set(gcf,'color','w');
nyquist(H);
export_fig problem2a.pdf;
rlocus(H);
export_fig problem2d-reg.pdf;
rlocus(-H);
export_fig problem2d-comp.pdf;