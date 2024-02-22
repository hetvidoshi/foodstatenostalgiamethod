clear all

%increments through a directory and calls getColorsStats to retrieve mean red,...
...green and blue data about all images

%will need to change 'editedFin' to the folder of interest you are trying
%to measure

D = 'editedFin';
S = dir(fullfile(D,'*.jpg'));

%preallocation
rMean = zeros(1,numel(S));
gMean = zeros(1,numel(S));
bMean = zeros(1,numel(S));

%increment through
%saves output of getColorsStats
for k = 1:numel(S)
    F = fullfile(D,S(k).name);
    [rMean(k),gMean(k),bMean(k)]=getColorsStats(S(k).name);
    names{k,1} = S(k).name;
end
 
%transposes for easy export 
rMean = rMean';
gMean = gMean';
bMean = bMean';