peter.paul <- function(n=50) {
  win <- sample(c(-1,1), size=n, replace=TRUE)
  sum(win) #fortune at the end of the game
}
peter.paul()

F <- replicate(10000, peter.paul())

max(F)