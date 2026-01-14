function [rvals,dat_avg] = azimuthal_average(x,y,data)
% function [rvals dat_avg] = azimuthal_average(x, y, data)
    [theta,r] = cart2pol(x,y);
    rvals = unique(r);
    dat_avg = zeros(size(rvals));

    for idx = 1 : length(rvals)
        fr = r == rvals(idx);
        dat_avg(idx) = mean(data(fr));
    end