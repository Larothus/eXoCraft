function sat = sat_extract(input_image_file, output_image_file)

rgb_image = imread(input_image_file);

disp("Image file read in")

hsv_image = rgb2hsv(rgb_image);

disp("rgb image converted to hsv space")

x = columns(hsv_image);
y = rows(hsv_image);

sat = zeros(y,x);

disp("Zeroed sat array created")

for i = 1:x
    for j = 1:y
        sat(j,i) = hsv_image(j,i,2);
endfor
endfor

disp("sat values assigned")

sat = 256 * sat;

disp("normalize sat values")

sat = uint8(sat);

disp("sat values set to integers")

imwrite(sat, output_image_file);

disp("sat values set to integers")

disp("image written to file")

endfunction

