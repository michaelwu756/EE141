n = 1000; %// Define number of points on circle
theta = linspace(0, 2*pi, n);
x = cos(theta);
y = sin(theta);
hold on;
plot(x, y,'r--'); %// Unit circle