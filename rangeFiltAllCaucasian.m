%texture analysis information is from
%https://www.mathworks.com/help/images/texture-analysis-1.html#:~:text=...
...Texture%20analysis%20attempts%20to%20quantify,intensity%20values%2C%20or%20gray%20levels.

%3:length of files was due to some issue I was having with two non images
%being at the "top" of my directory. Might not be an issue for others.

%retreives file name
%opens image with imread
%retrieves local ranges
%J = rangefilt(I) returns the array J, where each output pixel contains ...
...the range value (maximum value − minimum value) of the 3-by-3 ...
    ...neighborhood around the corresponding pixel in the input image I.

files = dir(fullfile('C:\Users\ckorn\Documents\Anderson Lab\Food Images\Caucasian\v3SplitChannels'));

for i = 3:length(files)
    baseFileName = files(i).name;
    fullName = fullfile(files(i).folder,baseFileName);
    im= imread(fullName);
    rangeFilt = rangefilt(im(:,:,:));
    meanRng(i-2)= mean2(rangeFilt);
end
