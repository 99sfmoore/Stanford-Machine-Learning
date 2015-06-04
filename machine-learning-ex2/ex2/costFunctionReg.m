function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta




% =============================================================
new_theta = theta;
new_theta(1) = 0;
J = costFunction(theta,X,y) + (lambda/(2*m))*sum(new_theta.^2);

hyp = sigmoid(X*theta);
for j = 1:size(theta)
    grad_sum = 0;
    for i = 1:m
        grad_sum = grad_sum + (hyp(i) - y(i))*X(i,j);
    end
    if j == 1
        grad(j) = (1/m)*grad_sum;
    else
        grad(j) = (1/m)*grad_sum + (lambda/m)*theta(j);
    end
end
end
