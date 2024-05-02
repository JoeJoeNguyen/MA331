data = {[65 87 73 79 81 69],[75 69 83 81 72 79 90],[59 78 67 62 83 76],[94 89 80 88]};
k = numel(data);
for i=1:k % summarize the data
n(i) = numel(data{i});
m(i) = mean(data{i});
s(i) = std(data{i});
end
xb = sum(m.*n)/sum(n); % we compute xb as a weighted mean
ssb = sum(n.*(m-xb).^2);
ssw = sum((n-1).*s.^2);
mssb = ssb/(k-1);
mssw = ssw/(sum(n)-k);
f = mssb/mssw
p_value = 1 - fcdf(f, k - 1, sum(n) - k)
a = 0.05;
if (1-fcdf(f,k-1,sum(n)-k) < a)
disp("Reject. There is statistical evidence that indicates a difference in the means.");
else
disp("Cannot reject.");
end