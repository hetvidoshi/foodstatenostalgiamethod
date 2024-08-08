%requires image processing toolbox
clear all

%increments through all images in a directory
% text between the ' ' will need to be changed per individual
files = dir(fullfile('C:\Users\ckorn\Documents\Anderson Lab\Food Images\Indian\editedFin'));


%3:length of files was due to some issue I was having with two non images
%being at the "top" of my directory. Might not be an issue for others.

%retreives file name
%opens image with imread
%converts to hsv
%retrieves hue and saturation values
for i = 3:length(files)
    baseFileName = files(i).name;
    fullName = fullfile(files(i).folder,baseFileName);
    im= imread(fullName);   
    imRGB = imread(fullName);
    hsvImg = rgb2hsv(imRGB);
    sats(i-2) = mean2(hsvImg(:,:,2));
    hues(i-2) = mean2(hsvImg(:,:,1));
end

%transposes vectors so that they are more easily exportable
sats = sats';
hues = hues';