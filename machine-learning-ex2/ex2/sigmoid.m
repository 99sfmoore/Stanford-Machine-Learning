function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
e = exp(1);

% non-vectorized version
%dims = size(g);
%for i = 1:dims(1)
%    for j = 1:dims(2)
%        g(i,j) = 1 / (1 + e^-z(i,j));
%    end
%end

g = 1./(1+e.^-z);

% =============================================================

end
