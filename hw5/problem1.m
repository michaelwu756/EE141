s=tf('s');
Ha=1/2*(s/5+1)*(s/10+1)/(s*(s+1)*(s+100));
bodeplot(Ha);
export_fig problem1a.pdf;

s=tf('s');
Hb=-s/((s+1)*(s-1));
bodeplot(Hb);
export_fig problem1b.pdf;

s=tf('s');
Hc=(1-s)/(s*(s+1));
bodeplot(Hc);
export_fig problem1c.pdf;

s=tf('s');
Hd=4*((s/2)^2+1)/(s*(s^2+1));
bodeplot(Hd);
export_fig problem1d.pdf;

s=tf('s');
He=(1/10)*(s+1)^2/(s^3*(s/10+1));
bodeplot(He);
export_fig problem1e.pdf;

s=tf('s');
Hf=exp(-0.2*s)/(s*(s+1));
bodeplot(Hf);
export_fig problem1f.pdf;

s=tf('s');
Hg=10*(s+1)/(s*(s^2+20*s+100));
bodeplot(Hg);
export_fig problem1g.pdf;

s=tf('s');
Hh=(1+0.5*s)/s^2;
bodeplot(Hh);
export_fig problem1h.pdf;