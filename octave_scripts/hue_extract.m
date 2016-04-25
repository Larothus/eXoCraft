function hue = hue_extract(input_image_file, output_image_file)

rgb_image = imread(input_image_file);

disp("Image file read in")

hsv_image = rgb2hsv(rgb_image);

disp("rgb image converted to hsv space")

x = columns(hsv_image);
y = rows(hsv_image);

hue = zeros(y,x);

disp("Zeroed hue array created")

for i = 1:x
    for j = 1:y
        hue(j,i) = hsv_image(j,i,1);
endfor
endfor

disp("hue values assigned")

hue = 256 * hue;

disp("normalize hue values")

hue = uint8(hue);

disp("hue values set to integers")

imwrite(hue, output_image_file);

disp("hue values set to integers")

disp("image written to file")

endfunction

