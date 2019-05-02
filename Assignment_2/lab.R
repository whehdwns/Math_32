#number of trials
numTotalTrials = 50

#count vector for each problem
count1 = numeric(numTotalTrials)
count2 = numeric(numTotalTrials)
count3 = numeric(numTotalTrials)

#head(1), tail(-1)  
flips = c(-1,1)

#sample size 50 with replacements, heads or tails
for (j in seq(from=1,to = numTotalTrials,by =1 )){
  outcome = sample(flips,50,replace = TRUE)
  
  #Break even, Prob 1
  count1[j] = sum(outcome)
  
  #sum of cases where there is ore 1's, Prob 2
  count2[j] = sum(outcome == 1)
  
  #Cumulative sum of earning during the game
  count3[j] = max(cumsum(outcome))
}
#Probability of breaking even
print(sprintf('Probability of breaking even in %d trials is %3.3f ',numTotalTrials, sum(count1==0)/numTotalTrials))

#Fraction of time Peter in lead
print(sprintf('Fraction of time Per is lead is %3.3f ', sum(count2 > 25)/numTotalTrials))

#Peter's best average fortune
print(sprintf("Peters average best fortune in a 50-toss game is %3.2f.", mean(count3)))
