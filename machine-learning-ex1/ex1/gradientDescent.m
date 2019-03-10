function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
h = zeros(m, 1);
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    % for each training example number i:
    %   hypothesis = theta' * x(i, :) - get ith row and entire columns
    %   save hypothesis to vector h

    % now we have m-dimensional vector h that stores all hypothesis using previous theta, use this to update each theta

  for i = 1:m

      h(i, 1) = X(i, :) * theta;

  end

  for i = 1:length(theta)
  
      theta(i, 1) = theta(i, 1) - alpha * ((h - y)' *  X(:, i)) / m;

  end

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
