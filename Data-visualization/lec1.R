# Revision of 5th sem
plot(4, 5)

x <-c(2,3,5)
y<-c(4,2,5)

plot(x,y)

plot(c(3,4,5),c(2,4,6))

plot(1:29)
plot(-1:-29)

#properities
plot(-1:-10, type="l",col='cyan' )

# labels, size, pch 1 to 20
plot(1:10, main = 'plot', xlab = 'x axies', ylab = 'y lab',cex=1,pch=3)

#with line line type ltv, line width lwd
plot(1:10, main = 'My line', xlab = 'x axies', type='l', ylab = 'y lab',lty=3, lwd=4)

# todo: more than one line in graph
line1 = c(1,2,3,4)
line2 = c(4,3,2,3)
line3 = c(7,5,3,4)
plot(lines(line1, type='l', col='red'),
     lines(line2, type='l', col='purple'),
     lines(line3, type='l', col='blue'))



