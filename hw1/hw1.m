
%initi% Set parameters
mu = 2;
sigma = 3;
n = 20;
num_samples = 100;

% Initialize arrays to store the quantities
quantity1 = zeros(num_samples, 1);
quantity2 = zeros(num_samples, 1);

% Generate samples and calculate quantities
for i = 1:num_samples
    % Sample n observations from N(mu, sigma)
    X = mu + sigma * randn(n, 1);
    
    % Calculate sample mean and variance
    x_bar = mean(X);
    s2 = var(X, 1);
    
    % Calculate the quantities
    quantity1(i) = (x_bar - mu) / sqrt(sigma^2 / n);
    quantity2(i) = (n - 1) * s2 / sigma^2;
end

% Plot histograms
figure;
subplot(2, 1, 1);
histogram(quantity1, 'Normalization', 'pdf');
title('Histogram of (x - 2) / sqrt((3^2) / n)');

subplot(2, 1, 2);
histogram(quantity2, 'Normalization', 'pdf');
title('Histogram of ((n - 1) * s^2) / 3^2');

% Plot scatterplot
figure;
scatter(quantity1, quantity2);
xlabel('(x - 2) / sqrt((3^2) / n)');
ylabel('((n - 1) * s^2) / 3^2');
title('Scatterplot of the two quantities');

% Number of samples
N = 100;

% Generate N pairs of independent standard Gaussian random variables
Z1 = randn(N, 1);
Z2 = randn(N, 1);

% Plot scatterplot of the independent Gaussian random variables
figure;
scatter(Z1, Z2);
xlabel('Z1');
ylabel('Z2');
title('Scatterplot of Independent Standard Gaussian Random Variables');




