% Number of samples
N = 120;

% Generate N random samples from the Gaussian distribution
data = randn(N,1);


% Compute the ECDF
[F_empirical,X_empirical] = ecdf(data);
%built-in function need to define the population distribution as a ve


% Compute the true CDF
X_true = linspace(min(data), max(data), N);
F_true = normcdf(X_true, 0, 1);

% Plot the ECDF and the true CDF
figure;
plot(X_empirical, F_empirical, 'r', 'LineWidth', 2);
hold on;
plot(X_true, F_true, 'b', 'LineWidth', 2);
hold off;
xlabel('Sample Mean');
ylabel('Cumulative Probability');
legend('ECDF', 'CDF', 'Location', 'southeast');
title('Convergence of ECDF to CDF');
grid on;