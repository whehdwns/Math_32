#This code will calculate the are under the curve y = x^2
#as x varies from 0 to 1.

xLim = 1; #Length of X side of Box
yLim = 4; #Length of Y side of Box

numTotalSamples = 10000;
numSuccesses    = 0; 

for (j in seq(from=1,to=numTotalSamples,by=1))
{
  randX = runif(1,max=xLim);
  randY = runif(4,max=yLim);
  
  if(randY<randX^2){
    numSuccesses = numSuccesses+1;
  }
}

areaRatio = (numSuccesses/numTotalSamples);
areaEstimate = areaRatio*xLim*yLim;

print(areaEstimate)