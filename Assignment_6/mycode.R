# load data set and attach it
load("concrete.RData")

# simple regression
# First attach file
attach(x);
# linear model y as a function of predictors cement and water
# Think of this as modeling y as function of two variables.
# Play around with different predictors
# If you ever want to fit all the predictors, the command is lm(y~.,data=x)
mylm = lm(y ~ cement + water,data=x)
detach(x);

#what is the in-sample MSE: mean of squared errors 
#This number tells you how well your model do on the training data.
inSampleMSE = mean((y-predict(mylm))^2)

# predict y using *new* values of x
# the new values of x are in xtest
ypred = predict(mylm,newdata=xtest)

# output MSE (mean squared error)
# by comparing against ytest
# This value tells you how well you do on the test data.
outputMSE = mean((ypred-ytest)^2)

# in-sample MSE
print(inSampleMSE)

# out-of-sample MSE
print(outputMSE)

# This plots side-by-side comparison between training and test MSEs.
# No need to touch this part of the code.
par(mfrow=c(1,2))
plot(y,predict(mylm),xlab='True value',ylab='Predicted value',main=sprintf('Predicted vs. True Values \n w Insample MSE %3.2f',inSampleMSE))
plot(ytest,predict(mylm,newdata=xtest),xlab='True value',ylab='Predicted value',main= sprintf('Predicted vs. True Values \n w Outsample MSE %3.2f',outputMSE))

