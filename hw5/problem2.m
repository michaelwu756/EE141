s=tf('s');
H1=(s/0.01+1)/(s^2+s+1);
H2=(s/0.1+1)/(s^2+s+1);
H3=(s/1+1)/(s^2+s+1);
H4=(s/10+1)/(s^2+s+1);
H5=(s/100+1)/(s^2+s+1);

set(gcf,'color','w');
step(H1);
hold on;
step(H2);
step(H3);
step(H4);
step(H5);
hold off;
export_fig problem2a.pdf;

stepinfo(H1)
stepinfo(H2)
stepinfo(H3)
stepinfo(H4)
stepinfo(H5)

option = bodeoptions;
option.PhaseVisible = 'off';
bode(H1, option);
hold on;
bode(H2, option);
bode(H3, option);
bode(H4, option);
bode(H5, option);
hold off;
export_fig problem2c-mag.pdf;

option.PhaseVisible = 'on';
option.MagVisible = 'off';
bode(H1, option);
hold on;
bode(H2, option);
bode(H3, option);
bode(H4, option);
bode(H5, option);
hold off;
export_fig problem2c-phase.pdf;

getPeakGain(H1)
getPeakGain(H2)
getPeakGain(H3)
getPeakGain(H4)
getPeakGain(H5)