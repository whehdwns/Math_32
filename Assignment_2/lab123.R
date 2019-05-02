#number of Try
numTotalTrials = 10000

#count for each cases
count = c(numTotalTrials)
count2 = c(numTotalTrials)
count3 = c(numTotalTrials)

#head +1, tails -1
toss= c(-1,1)

for (j in seq(from=1, to=numTotalTrials, by=1))
{
  tosscoin= sample(toss,50, replace=TRUE)
  #break even
  count[j] = sum(tosscoin)
  #fraction
  count2[j] = sum(tosscoin == 1)
  cum.tosscoin= cumsum(tosscoin)
  #maximum fortune
  count3[j] = max(cum.tosscoin)
}
#plot of the game
plot(tosscoin, type = "l", ylim = toss)

#probability that Peter wil break after 50 tosses
print(sum(count==0)/numTotalTrials)
#fraction of the time that Peter will be in the lead
print(sum(count2>25)/numTotalTrials)
#average of Peter's best fortune during 50-toss game
print(mean(count3))

