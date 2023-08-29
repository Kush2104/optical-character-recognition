function c_image = crop(image)
image = imread(image);
s = size(image);
t=0; b=0; l=0; r =0;
for i = 1:s(1)
    for j = 1:s(2)
        if(image(i, j, 1)==0)
            if(t==0)
                t=i;b = i;
                l=j;r=j;
            end
            if(l>j)
                l=j;
            end
            if(r<j)
                r=j;
            end 
            if(b<i)
                b=i;
            end
        end
        
    end
end

image = image(t:b,l:r, 1:3);
kernel = -1 * ones(3)/9;
kernel(2,2) = 8;
kernel = kernel / sum(kernel(:));
c_image = conv2(double(image), kernel, 'same');
c_image = imsharpen(c_image);
end

