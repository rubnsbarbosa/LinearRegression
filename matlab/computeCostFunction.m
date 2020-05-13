function J = computeCostFunction(X, y, theta)

% number of training examples
m = length(y);
% Compute J = cost function for linear regression
J = 0;
J = sum((X * theta - y) .^ 2) / (2 * m);

end
