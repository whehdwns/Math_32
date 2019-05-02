temps = matrix(0,nrow=5,ncol=5)
temps[,1] = c(102,99,94,91,91)
temps[,2] = c(71,85,67,68,68)
temps[,3] = c(82,83,79,79,79)
temps[,4] = c(112,110,108,104,104)
temps[,5] = c(82,78,71,84,82)

tdat = data.frame(temps)
rownames(tdat) = c("8.1","8.2","8.3","8.4","8.5")
colnames(tdat) =   c("merced","sf","la","vegas","seattle")
 print(tdat)

