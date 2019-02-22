s=tf('s');
set(gcf,'color','w');
H=-1/25*s*(s/100+1)/(s/50+1)^2;
bodeplot(H);
export_fig problem4c.pdf;