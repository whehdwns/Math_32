# Discussion session 2 lab problems

# Set a number of simulations. This number is arbitrary. Pick a number preferably > 100
numTotalTrials = 50

# Create count vectors to store simulation results
# count1, count2, and count3 repestively represents count vector for problem 1, problem 2
# and the extra credit.
# For problem 2, there are two possible interpretation. We tackle them both
# in this code. count2a and count2b are two count vectors created to store simulation 
# results for problem 2.
# numeric is another way to create a count vector. The other way is 0*c(1:numTotalTrials).
count1 = numeric(numTotalTrials)
count2a = numeric(numTotalTrials)
count2b = numeric(numTotalTrials)
count3 = numeric(numTotalTrials)

# Two possible outcomes for a coin toss head (+1) and tail (-1)
flips = c(-1,1)


# Simulate the 50-toss game numToltalTrials times
for (j in seq(from=1,to=numTotalTrials,by=1))
{
  # Coin flips 50 times. Each 50 coin-toss game is one simulation. 
  outcome = sample(flips,50,replace=TRUE)
  
  # Problem 1: Break even after 50 tosses means sum of outcome = 0
  count1[j] = sum(outcome)
  
  # Problem 2 Approach 1: Peter leading in the game means more 1's than -1's.
  # So, we count the number of 1's.
  count2a[j] = sum(outcome == 1)
  
  # Problem 2 Approach 2: cumulative sum of the 50-toss game outcome. Peter's in lead 
  # if cumsum is greater than 0.
  count2b[j] = sum(cumsum(outcome)>0)/50
  
  # Extra credit: Peter's best fortune in a 50-toss game
  # We use cumsum to find Peter's cumulative winning. Max fortune might occur 
  # during the game.
  # GOAL: find max fortune for this game.
  count3[j] = max(cumsum(outcome))
  
}

# Probability of break even:
print(sprintf('Probability of breaking even in %d trials is %3.3f.',numTotalTrials,sum(count1==0)/numTotalTrials))

# Fraction of time Peter in lead (approach 1)
print(sprintf('Fraction of time Peter is lead with approach 1 is %3.3f.',sum(count2a > 25)/numTotalTrials))

# Fraction of time Peter in lead (approach 2)
print(sprintf('Fraction of time Peter is lead with approach 2 is %3.3f.', mean(count2b)))

# Peter's best average fortune
print(sprintf("Peter's average best fortune in a 50-toss game is $%3.2f.", mean(count3)))


