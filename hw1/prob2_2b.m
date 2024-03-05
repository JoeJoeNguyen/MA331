% Define the parameters for the distributions
mu_X = -1;
sigma_X = sqrt(9); % standard deviation is the square root of the variance

df_T = 10; % degrees of freedom for the t-distribution

df1_F = 8; % numerator degrees of freedom for the F-distribution
df2_F = 9; % denominator degrees of freedom for the F-distribution

% Define the significance level
alpha = 0.05;

% Calculate the quantiles
q_X = [norminv(alpha/2, mu_X, sigma_X), norminv(1 - alpha/2, mu_X, sigma_X)];

% For Y, we assume it follows a chi-square distribution with 12 degrees of freedom
q_Y = [chi2inv(alpha/2, 12), chi2inv(1 - alpha/2, 12)];

q_T = [tinv(alpha/2, df_T), tinv(1 - alpha/2, df_T)];

q_F = [finv(alpha/2, df1_F, df2_F), finv(1 - alpha/2, df1_F, df2_F)];

% Display the results
fprintf('Quantiles for X: %.4f, %.4f\n', q_X(1), q_X(2));
fprintf('Quantiles for Y: %.4f, %.4f\n', q_Y(1), q_Y(2));
fprintf('Quantiles for T: %.4f, %.4f\n', q_T(1), q_T(2));
fprintf('Quantiles for F: %.4f, %.4f\n', q_F(1), q_F(2));
