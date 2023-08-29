myFolder = 'C:\Disk D\Matlab\ANN\Modified\t';
Files = dir('*.png');
for k = 1:length(Files)
    Filenames = Files(k).name;
    img = crop(Filenames);
    num = int2str(k);
    myfile = strcat('C:\Disk D\Matlab\ANN\Modified\t\t',num,'.png');
    imwrite(img,myfile)
end