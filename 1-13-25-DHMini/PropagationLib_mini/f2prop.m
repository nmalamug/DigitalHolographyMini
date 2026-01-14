function [Uout, X2, Y2] = f2prop(Uin, X, Y, Z, lambda)
%F2PROP Summary of this function goes here
%   Detailed explanation goes here

%Deal with coordinate spaces
[x,y] = unmesh(X, Y);

delx = x(2) - x(1);
dely = y(2) - y(1);

vx = linspace(-1/(2*delx), 1/(2*delx), numel(x)+1);
vx = vx(1:(numel(vx)-1));
vy = linspace(-1/(2*dely), 1/(2*dely), numel(y)+1);
vy = vy(1:(numel(vy)-1));

x2 = vx.*lambda.*Z;
y2 = vy.*lambda.*Z;

[X2, Y2] = meshgrid(x2,y2);

%Fourier transform of the input
Uout = 1/(1i*lambda*Z).*fftshift(fft2(fftshift(Uin))).*delx.*dely;

end