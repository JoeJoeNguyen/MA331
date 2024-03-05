% Given data
values = [80, 100, 120];
probabilities = [0.2, 0.3, 0.5];

% Generate a sample from the finite distribution
sample_size = 20000; % Choose an appropriate sample size
sample_data = randsample(values, sample_size, true, probabilities);

% Compute ECDF
n = length(sample_data);
x_values = sort(sample_data);
ecdf_values = (1:n) / n;

% Overlay Gaussian CDFx_values
mu = sum(values .* probabilities); % Mean of the finite distribution
sigma = sqrt(sum((values - mu).^2 .* probabilities)); % Standard deviation

% Evaluate Gaussian CDF at x_values
gaussian_cdf_values = normcdf(x_values, mu, sigma);

% Plot ECDF and Gaussian CDF
figure;
plot(x_values, ecdf_values, 'b-', 'LineWidth', 2);
hold on;
plot(x_values, gaussian_cdf_values, 'r--', 'LineWidth', 1);
xlabel('x');
ylabel('CDF');
title('Glivenko-Cantelli Plot: ECDF vs. Gaussian CDF');
legend('Empirical CDF', 'Gaussian CDF');
grid on;

% Save the plot (optional)
% saveas(gcf, 'glivenko_cantelli_convergence.png');

% Display the plot
disp('Glivenko-Cantelli plot with Gaussian CDF overlay created.');
