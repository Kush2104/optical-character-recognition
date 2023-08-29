myFolder = 'C:\Disk D\Matlab\ANN\Modified\w';
Files = dir('*.png');
for k = 1:length(Files)
    Filenames = Files(k).name;
    img = crop(Filenames);
    num = int2str(k);
    myfile = strcat('C:\Disk D\Matlab\ANN\Modified\w\w',num,'.png');
    imwrite(img,myfile)
end