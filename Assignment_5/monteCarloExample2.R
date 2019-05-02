  #This code will calculate the are under the curve y = x^2
#as x varies from 0 to 1.

xLim = 1; # Length of X side of the box
yLim = 1 ; # Length of Y side of the box

numTotalSamples = 3000;
numSuccesses    = 0;
TotalArea = vector(length=numTotalSamples,mode='numeric')
# the above creates a vector of length depending
# on the number of samples you want.

for (j in seq(from=1,to=numTotalSamples,by=1))
{
  # pick one x and one y from a uniform distribution
  randX = runif(1,max=xLim);
  randY = runif(1,max=yLim);
  
  if(randY < (randX^2)){ # is the point under the curve?
    numSuccesses = numSuccesses+1; # if yes, then success!
  }
  # compute new sample average and store it in the vector TotalArea
  TotalArea[j] = (xLim*yLim)*(numSuccesses/j);
}

areaRatio = (numSuccesses/numTotalSamples);
areaEstimate = areaRatio*xLim*yLim;

print(areaEstimate) # final estimate of area after a number of samples

# The plot shows the sample average for all samples taken
# The blue dashed line represents the true value of the integral.
# This can be changed in the second 'lines' function.
plot(TotalArea, xlab='Number of Samples',ylab='Estimate of Area')
lines(TotalArea, col='red')
lines(c(1,numTotalSamples),c(1/3,1/3), col='blue', lwd=2,lty=2)
legend('right',legend = c('Sample Average','True Area'), col=c('red','blue'),lty=1:2,cex=0.8)