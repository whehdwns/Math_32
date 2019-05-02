#total try
numTotalTrials = 10000
#each cases
count = 0
count2 =0 
count3 = 0

for (j in seq(from= 1, to = numTotalTrials, by=1))
{
  h= sample(c(-1,1), size=50, replace=TRUE)
  if(sum(h) == 0)
  {
    count = count+1
  }
  
  count2[j] = sum(h == 1)
 # lead = (median(numTotalTrials))
  cum.h= cumsum(h)
  #maximum fortune (best fortune)
  count3[j] = max(cum.h)
}
#plot
plot(h, type = "l", ylim = c(-1,1))

print(count/numTotalTrials)

#Peter will be in the lead if he win higher than 25 times in a 50-toss game
print(sum(count2>25) /numTotalTrials)

#average => mean
print(mean(count3))
