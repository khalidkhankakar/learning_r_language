y1= c(2,3,4,3,4,3,9,21,4,3)
y2 =c(3,4,2,4,5,6,7,8,9,10)
y3 = c(12,3,4,5,7,3,2,5,3,7)

colors = c('blue', 'cyan','red', 'purple', 'yellow', 'green', 'orange', 'white', 'gray','brown')

data = data.frame(y1,y2,y3)

barplot(as.matrix(data), main = 'Component bar chart', ylab='Count',xlab='Colors', beside=FALSE, col=rainbow(10))


# ASSIGNMENT:- show numeric labels on component bar chart and auto colors schem
# barplot(as.matrix(data),names.arg =  , main = 'Component bar chart', ylab='Count',xlab='Colors', beside=FALSE, col=heat.colors(10), legend=rownames(data), args.legend=list(title='Colors', x='topright', cex=0.8, bty='n'))


library(tidyverse)
score=c(23,24,45,67,76,43,65,78,90,43,21)
qplot(y=score, x="", geom="boxplot", col=I("red"), fill=I("lightblue"),
      ylab="score", main="status score")

# next lecture