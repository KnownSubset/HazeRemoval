image = im2double(imread('canon7/canon7.jpg'));
%image = im2double(imread('Untitled.png'));
dc = dark_channel(image);
al = estimate_atmospheric_light(dc, image);
t = transmission(image, al);
r = scene_radiance(image, al, t);