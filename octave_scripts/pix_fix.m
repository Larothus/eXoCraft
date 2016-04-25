function fixed_hue = pix_fix(hue);

x = columns(hue);
y = rows(hue);

fixed_hue = zeros(y,x);

fixed_hue = uint8(fixed_hue);

disp("Created zeroed fixed_hue array created");

for i = 1:x
    for j = 1:y
        if hue(j,i) < 220
            fixed_hue(j,i) = hue(j,i) + 30;
        endif
    endfor
endfor
endfunction