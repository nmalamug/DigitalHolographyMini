%{
n=40;
[MX, MY] = meshgrid(1:n, 1:n);
random = normrnd(0, 1, [n n]);
kernel = exp(-pi*(((MX-n/2)*.25).^2 + ((MY-n/2)*.25).^2));

temp = conv2(random, kernel, "same");
noise.p1 = exp(1i*.5*temp);

random = normrnd(0, 1, [40 40]);
temp = conv2(random, kernel, "same");
noise.p2 = exp(1i*.5*temp);

random = normrnd(0, 1, [40 40]);
temp = conv2(random, kernel, "same");
noise.p3 = exp(1i*.5*temp);

random = normrnd(0, 1, [40 40]);
temp = conv2(random, kernel, "same");
noise.p4 = exp(1i*.5*temp);

random = normrnd(0, 1, [40 40]);
temp = conv2(random, kernel, "same");
noise.p5 = exp(1i*.5*temp);
%}
clf
figure(1)
figure
imagesc(angle(noise.p1))
figure
imagesc(angle(noise.p2))
figure
imagesc(angle(noise.p3))
figure
imagesc(angle(noise.p4))
figure
imagesc(angle(noise.p5))

%save noise.mat noise