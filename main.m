function [] = main(loc)
    image = im2double(imread(loc));
    %image = im2double(imread('Untitled.png'));
    dc = dark_channel(image);
    al = estimate_atmospheric_light(dc, image);
    t = transmission(image, al);
    r = scene_radiance(image, al, t);
    subplot(1, 2, 1), imshow(image);
    subplot(1, 2, 2), imshow(r);
end