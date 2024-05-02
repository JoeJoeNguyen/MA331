neutral = [0, 2, 0, 1, 0.5, 0, 0.5, 2, 1, 0, 0, 0, 0, 1];
sad = [3, 4, 0.5, 1, 2.5, 2, 1.5, 0, 1, 1.5, 1.5, 2.5, 4, 3, 3.5, 1, 3.5];
n = length(sad);
sigma = std(sad);
bw = 1.06 * sigma * n^(-1/5);
% Kernel Density Estimation for the neutral group with specified bandwidth
[f_neutral, x_neutral] = ksdensity(neutral, "Bandwidth", bw);
figure;
plot(x_neutral, f_neutral, "LineWidth", 2);
title("Kernel Density Estimate of Neutral Group");
xlabel("Purchase Price ($)");
ylabel("Density");
[f_sad, x_sad] = ksdensity(sad, "Bandwidth", bw);
figure;
plot(x_sad, f_sad, "LineWidth", 2);
title("Kernel Density Estimate of Sad Group");
xlabel("Purchase Price ($)");
ylabel("Density");