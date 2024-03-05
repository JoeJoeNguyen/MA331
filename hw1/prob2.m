% Define the parameters for the distributions
mu_X = -1;
sigma_X = sqrt(9); % standard deviation is the square root of the variance

df_T = 10; % degrees of freedom for the t-distribution

df1_F = 8; % numerator degrees of freedom for the F-distribution
df2_F = 9; % denominator degrees of freedom for the F-distribution

% Calculate the probabilities
P_X = normcdf(1, mu_X, sigma_X) - normcdf(0, mu_X, sigma_X);

% For Y, we assume it follows a chi-square distribution with 12 degrees of freedom
P_Y = chi2cdf(14, 12) - chi2cdf(3, 12);

P_T = tcdf(1, df_T) - tcdf(0, df_T);

P_F = fcdf(1, df1_F, df2_F) - fcdf(0, df1_F, df2_F);

% Display the results
fprintf('P(0 < X < 1) = %.4f\n', P_X);
fprintf('P(3 < Y < 14) = %.4f\n', P_Y);
fprintf('P(0 < T < 1) = %.4f\n', P_T);
fprintf('P(0 < F < 1) = %.4f\n', P_F);
