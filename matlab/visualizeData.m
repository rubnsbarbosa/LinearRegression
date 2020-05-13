% visualize the dataset points x and y into a new figure
function visualizeData(x, y)

% open a new figure window
figure;

plot(x, y, 'rx', 'MarkerSize', 10);
title('Dataset');
xlabel('x');
ylabel('y');

end
