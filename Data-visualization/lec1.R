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

# Vectors
line1 = c(1,2,3,4)
line2 = c(4,3,2,3)
line3 = c(7,5,3,4)

# Initial plot (first line)
plot(line1, type = 'l', col = 'red', lwd = 2, ylim = c(0, 8), 
     main = 'Multiple Lines', xlab = 'Index', ylab = 'Values')

# Add more lines
lines(line2, col = 'blue', lwd = 2, lty = 2)   # second line
lines(line3, col = 'green', lwd = 2, lty = 3)  # third line

# Add a legend
legend("topright", legend = c("line1", "line2", "line3"), 
       col = c("red", "blue", "green"), lty = 1:3, lwd = 2)



