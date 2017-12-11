function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
J1 = 0;
J2 = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

h = sigmoid((theta'*X')');
J1 = -y.*log(h)-(1-y).*log(1-h);
J1 = sum(J1)/m;
J2 = sum(theta(2:end).^2)*lambda/(2*m);
J = J1+J2;
x = (2:size(X,2));
grad(1) = sum((h-y).*X(:,1))/m;
for i=x
    grad(i) = (sum((h-y).*X(:,i)) + lambda*theta(i))/m;




% =============================================================

end
