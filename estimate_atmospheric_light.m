function [atmospheric_light] = estimate_atmospheric_light(dark_channel)

[cols rows] = size(dark_channel);
[vector ~] = sort(reshape(dark_channel, cols * rows, []), 1, 'descend');
% take the brightest .1% of the dark channel
limit = round(cols * rows /1000);
atmospheric_light= median(vector(1:limit));

end