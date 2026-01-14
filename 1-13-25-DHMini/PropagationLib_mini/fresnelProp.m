function [Uout, Xout, Yout] = fresnelProp(Uin, Xin, Yin, z, wavelength)
%FRESNELPROP Function for Fresnel Propagation
% 
arguments (Input)
    Uin %Field at input plane
    Xin %X values in meshgrid
    Yin %Y values in meshgrid
    z %Propagation Distance
    wavelength %Wavelength
end

arguments (Output)
    Uout %Field at output plane
    Xout %X values for output plane
    Yout %Y values for output plane. 
end

k = 2*pi/wavelength;
transfer = @(vX, vY, z) exp(1i*k*z).*exp(-1i*wavelength*z*pi.*(vX.^2 + vY.^2));%Gaskill 10.57
premult = @(z) 1;%k/(1i*2*pi*z).*exp(1i*k*z);

%Define X2 and Y2 in terms of X1, Y1, prop distance, wavelength
[x, y] = unmesh(Xin, Yin);

delx = x(2)-x(1);
dely = y(2)-y(1);

vx = linspace(-1/(2*delx), 1/(2*delx), numel(x)+1);
vx = vx(1:(numel(vx)-1));
vy = linspace(-1/(2*dely), 1/(2*dely), numel(y)+1);
vy = vy(1:(numel(vy)-1));

%vx = vx.*z.*wavelength;
%vy = vy.*z.*wavelength;

[vX, vY] = meshgrid(vx, vy);

Xout = Xin;
Yout = Yin;

%Create kernel and premultiplication
knl = transfer(vX, vY, z);
A = premult(z);

%Calculate output field
UFT = fftshift(fft2(ifftshift(Uin)));
FieldFT = UFT.*knl;
Uout = A.*fftshift((ifft2(ifftshift(FieldFT))));
end