function [theta, J_history] = gradientDescent(X, y, theta, alpha, iterations)

% number of training examples
m = length(y);
J_history = zeros(iterations, 1);

for iter = 1:iterations,

    % hypothesis for linear regression
	h = (X * theta - y)';
    theta(1) = theta(1) - alpha * (1/m) * h * X(:, 1);
    theta(2) = theta(2) - alpha * (1/m) * h * X(:, 2);
    % Save the cost J in every iteration
    J_history(iter) = computeCostFunction(X, y, theta);

end

end
