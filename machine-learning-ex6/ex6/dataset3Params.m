function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 0.27;
sigma = 0.09;
% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

% model= svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
% predictions = svmPredict(model, Xval);
% minError = mean(double(predictions ~= yval));

% _C = C;
% _sigma = sigma;

% for i = 1:8

%   _sigma = 0.01;

%   for j = 1:8

%     model= svmTrain(X, y, _C, @(x1, x2) gaussianKernel(x1, x2, _sigma));
%     predictions = svmPredict(model, Xval);
%     _error = mean(double(predictions ~= yval));
%     disp((i-1)*8+j);

%     if _error < minError

%       minError = _error;
%       C = _C;
%       sigma = _sigma;
%       disp("Min Error: ");
%       disp(minError);
%       disp("sigma and C: ");
%       disp(sigma);
%       disp(C);

%     end

%     _sigma = _sigma * 3;

%   end

%   _C = _C * 3;

% end





% =========================================================================

end
