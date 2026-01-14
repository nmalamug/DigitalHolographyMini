function y = rect(x,b)
% function y = rect(x,b)
    if nargin == 1, b = 1; end
    x = abs(x); 
    y = double(x<b/2);
    y(x == b/2) = 0.5;