function value = value_extract(input_image_file, output_image_file)

rgb_image = imread(input_image_file);

disp("Image file read in")

hsv_image = rgb2hsv(rgb_image);

disp("rgb image converted to hsv space")

x = columns(hsv_image);
y = rows(hsv_image);

value = zeros(y,x);

disp("Zeroed value array created")

for i = 1:x
    for j = 1:y
        value(j,i) = hsv_image(j,i,3);
endfor
endfor

disp("value values assigned")

value = 256 * value;

disp("normalize value values")

value = uint8(value);

disp("value values set to integers")

imwrite(value, output_image_file);

disp("value values set to integers")

disp("image written to file")

endfunction