##poisson distribution (The Poisson distribution is a probability distribution that
#models the number of times an event occurs within a fixed interval of time or
#space, given that the events happen independently and at a constant average rate.)
##probabilty mass functions
##only one parameter that is muu (mean of distribution) 
plot_pois_pmf=function(mu){
  x=0:n
  pois=dpois(x,lambda = mu)
  mu_x=mu
  plot(x,pois,type = "h",lwd=3,
       main = paste("Poisson density :mu=",mu),
       xlab = "x",ylab = "p(X=x)")
  abline(v=mu_x,col="red",lwd=2)
}
n=100


values=c(0.5,1,5,8,20,50)
par(mfrow=c(3,2))
for (mu in values) {
  plot_pois_pmf(mu)
}

##cumulative distribution functions
plot_pois_cdf=function(mu){
  x=0:n
  pois=ppois(x,mu)
  plot(x,pois,type = "s",lwd=2,
       main=paste("Poisson distribution mu =",mu),
       xlab = "number of events x",
       ylab = "p(X=x)")
}
n=100
values=c(0.5,1,5,8,20,50)
par(mfrow=c(3,2))
for (mu in values) {
  plot_pois_cdf(mu)
}
##comparing poison with binomial
par(mfrow=c(2,1))
plot_binom_cdf(10,.5)
plot_pois_cdf(5)
##now plot the graph of cdf of binom_cdf(1000,.0005)
##binom(n=1000,p=0.0005)and pois(mu=5)

par(mfrow=c(2,1))
plot_binom_cdf(1000,.0005)
plot_pois_cdf(5)

