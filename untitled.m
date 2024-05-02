% Parameters
n = 100000;  % sample size
p0 = 1/4;  % null hypothesis probability
alpha = 0.05;  % significance level

% Rejection region for two-tailed test
z_alpha = norminv(1 - alpha/2);
rejection_region = [p0 - z_alpha*sqrt(p0*(1-p0)/n), p0 + z_alpha*sqrt(p0*(1-p0)/n)];

% Range of p values to consider for the power calculation
p_values = linspace(0, 1, 1000);

% Calculate power for each p value
power = zeros(size(p_values));
for i = 1:length(p_values)
    p = p_values(i);
    power(i) = 1 - normcdf(rejection_region(2), p, sqrt(p*(1-p)/n)) ...
               + normcdf(rejection_region(1), p, sqrt(p*(1-p)/n));
end

% Plot power as a function of p
figure;
plot(p_values, power);
xlabel('p');
ylabel('Power');
title('Power of Z-Test for Proportions as a Function of p');
grid on;
