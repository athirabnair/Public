function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

if size(z)==1
    g = 1/(1+exp(-z));
else if ndims(z)==1
    g = zeros(size(z));
    for i=1:size(z)
         g(i) = 1/(1+exp(-z(i)));
    end
else
    g = zeros(size(z,1),size(z,2));
    for i=1:size(z,1)
        for j=1:size(z,2)
           g(i,j) = 1/(1+exp(-z(i,j)));
        end
    end
end
% =============================================================

end
