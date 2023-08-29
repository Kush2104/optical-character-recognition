%This code is used to sort the alphabets into their respective folders so
%that the labels can be used for training

myFolder = 'C:\Disk D\Matlab\ANN\Modified\a';
Files = dir('*.png');
for k = 1:length(Files)
    Filenames = Files(k).name;
    img = crop(Filenames); %applying the crop funtion to every image present in the dataset
    num = int2str(k);
    myfile = strcat('C:\Disk D\Matlab\ANN\Modified\a\a',num,'.png'); %sorting htem into hte respective folders
    imwrite(img,myfile)
end