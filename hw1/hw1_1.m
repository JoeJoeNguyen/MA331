% Set the sample size
n = 50;

% Generate 1000 samples
samples = randn(n, 1000);
x_bar = mean(samples);
s = std(samples);

% Calculate the quantities
quantity1 = (x_bar - 2) ./ sqrt((3^2) / n);
quantity2 = ((n - 1) * s.^2) / 3^2;

% Plot histograms of the quantities
figure;
subplot(2,2,1);
histogram(quantity1, 'Normalization', 'pdf');
title('Histogram of (x - 2) / sqrt((3^2) / n)');

subplot(2,2,2);
histogram(quantity2, 'Normalization', 'pdf');
title('Histogram of ((n - 1) * s^2) / 3^2');

% Define the x-values for the theoretical distributions
x_std_g = linspace(min(quantity1) - 1, max(quantity1) + 1, 100);
x_chi_squared = linspace(min(quantity2) - 1, max(quantity2) + 1, 100);

% Calculate the PDFs of the theoretical distributions
pdf_std_normal = normpdf(x_std_g, 0, 1);
pdf_chi_squared = chi2pdf(x_chi_squared, n - 1);

% Plot the theoretical distributions
subplot(2,2,3);
plot(x_std_g, pdf_std_normal);
title('Standard Normal Distribution');

subplot(2,2,4);
plot(x_chi_squared, pdf_chi_squared);
title('Chi-Squared Distribution');

% Scatter plot of the quantities
figure;
scatter(quantity1, quantity2);
title('Scatter Plot of Quantities');
xlabel('Quantity 1');
ylabel('Quantity 2');
