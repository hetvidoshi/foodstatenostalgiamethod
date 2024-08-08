function [rMean,gMean,bMean]=getColorsStats(input)
%gets mean of red, green, and blue for picture
input=imread(input);
[width,height,colors] = size (input);
redVals = zeros(1,width*height);
i=1;
    for w = 1:width
        for h = 1:height
            redVals(i) = input(w,h,1);
            i=i+1;
        end
    end
rMean = mean(redVals);

greenVals = zeros(1,width*height);
i=1;
    for w = 1:width
        for h = 1:height
            greenVals(i) = input(w,h,2);
            i=i+1;
        end
    end
gMean = mean(greenVals);

i=1;
blueVals = zeros(1,width*height);
    for w = 1:width
        for h = 1:height
            blueVals(i) = input(w,h,3);
            i=i+1;
        end
    end
bMean = mean(blueVals);
end
