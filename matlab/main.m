% Machine Learning - Linear Regression

%%% visualize the dataset
fprintf('Visualizing Dataset\n');

dataset = load('data.txt');
X = dataset(:, 1);
y = dataset(:, 2);
% number of training examples
m = length(y);
% function to visualize the dataset
visualizeData(X, y);

fprintf('Program paused. Press enter to test cost function.\n');
pause;

%%% Cost function - mean squared error
% Add a column of ones to x
X = [ones(m, 1), dataset(:,1)];
% initialize theta parameters with zeros
theta = zeros(2, 1);
% compute and display initial cost
J = computeCostFunction(X, y, theta);
fprintf('With theta = [0; 0]\nCost Function computed = %f\n', J);
fprintf('Expected cost value (approx) 32.07\n');

fprintf('Program paused. Press enter to run gradient descent.\n');
pause;

%%% Gradient Descent
% iterations and learning rate (alpha)
iterations = 1500;
alpha = 0.01;
theta = gradientDescent(X, y, theta, alpha, iterations);
% print theta to screen
fprintf('Theta found by gradient descent:\n');
fprintf('%f\n', theta);
fprintf('Expected theta values (approx)\n');
fprintf(' -3.6303\n  1.1664\n\n');

% Plot the linear fit
hold on; % keep previous plot visible
plot(X(:,2), X*theta, '-')
title('Linear Regression');
legend('Training data', 'Linear regression', 'location', 'east');
hold off
