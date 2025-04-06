# structure of the data which is formed from the binomial distribution

plot_bionomial = function(n, p){
 x= 0:n
 bio = dbinom(x, n, p)
 mu_x = n*p
 plot(x, bio, type="h",
      lwd=2,col="blue",
      xlab="x",ylab="f(x)",
      abline(v=mu_x, col="red", lwd=2, lty=2),
      main=paste("Density = ",n,' P=',p))
}
  




n=50
values = c(0.05, 0.1, 0.2, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9)
par(mfrow=c(2,3))
# par(nfrow=c(2,3))
for(p in values){
 plot_bionomial(n, p)
}


