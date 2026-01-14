function [x, y] = unmesh(X,Y)
%UNMESH Turns a meshgrid back into axis vectors
x = X(1,:);
y = Y(:,1).';
end