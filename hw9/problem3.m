y = [13.26 14.15 13.86 14.81 15.68 15.64 15.58 15.67 16.08 16.36 16.14 16.68 16.00 15.66 16.05 16.22 16.17 16.03 16.69 15.83 16.21 16.13 16.36 16.42 16.92 16.65 16.94 17.47 18.07 17.52];
x = [1.00 1.13 1.27 1.41 1.55 1.68 1.82 1.96 2.10 2.24 2.37 2.51 2.65 2.79 2.93 3.06 3.20 3.34 3.48 3.62 3.75 3.89 4.03 4.17 4.31 4.44 4.58 4.72 4.86 5.00];
b1 = (mean(y.*x) - mean(x)*mean(y))/(mean(x.^2)-mean(x)^2);
b0 = mean(y) - b1*mean(x);
hold on;
plot(x,b0+b1*x,'--r')
plot(x,b+a*x,'b')
legend({'data', 'b1 x + b0', 'a x + b'},'location','best')
xlabel('x');