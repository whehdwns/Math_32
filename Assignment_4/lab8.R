#Graph 1
    plot(pbinom(0:100,500,0.01) , xlab = 'x', ylab = 'Probability', main = 'Distribution: Match') 
     lines(ppois(0:100,5),type = 'l', col = 'red')
     legend('bottomright', c('Binomial', 'Poisson'), lty = c(NA,1) , pch = c(1,NA), col = c('black', 'red'))
     
#Graph 2
   plot(pbinom(0:100,100,0.8) , xlab = 'x', ylab = 'Probability', main = 'Distribution: Not Match') 
   lines(ppois(0:100,80),type = 'l', col = 'red')
    legend('topleft', c('Binomial', 'Poisson'), lty = c(NA,1) , pch = c(1,NA), col = c('black', 'red'))
    
    