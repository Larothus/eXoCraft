function img_s = smooth(img_file,img_output_file)

spread = 13;

img = imread(img_file);

img_pad = padarray(img, [6, 6], "symmetric");

f_gauss = fspecial("gaussian", spread, spread/6);

gauss_img = filter2(f_gauss, img_pad, "valid");
gauss_img = uint8(gauss_img);

imwrite(gauss_img, img_output_file);

endfunction