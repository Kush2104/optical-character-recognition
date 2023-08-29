%This code is used to remove redundant spaces in the imagges so that we can
%focus only on the important information i.e. the alphabets.
%It checks for the leftmost pixel which is not a zero value and the
%rightmost pixel which is not a zero value and takes those pixels as the
%boundaries to crop the images from left to right and does the same for top
%and bottom.

function c_image = crop(image)
image = imread(image);
s = size(image);
t=0; b=0; l=0; r =0;
for i = 1:s(1)
    for j = 1:s(2)
        if(image(i, j, 1)==0)
            if(t==0)
                t=i;b = i;  %reassigning top and bottom values till we get only the required portion of the image
                l=j;r=j;    %reassigning left and right values till we get only the required portion of the image
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

image = image(t:b,l:r, 3); %cropping the image to the corresponding dimensions of left, right, top and bottom
% kernel = -1 * ones(3)/9;
% kernel(2,2) = 8;
% kernel = kernel / sum(kernel(:));
% c_image = conv2(double(image), kernel, 'same');
c_image = imsharpen(image); %performing sharpening of image 
end

