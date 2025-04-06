x1 = c(12,34,54,23,21)
x2 = c('khalid', 'khan', 'kakar', 'fahad', 'Ahmad')

# cex.main=1.5, cex.lab=.1, cex.axis= 1 used for different font sizes

barplot(x1, names.arg = x2, xlab = 'Boys', ylab = 'Power',
        col = heat.colors(5), main = 'Friends',
        cex.main=2, cex.lab=1, cex.axis= 1)

text(
  x=barplot(x1,
            names.arg =x2, 
            col=heat.colors(5),
            ylim = c(0, max(x1) *2)),
  y=x1,
  label=x1,
  pos=1, 
  cex=1, 
  col='blue')

library(ggplot2)

data = data.frame(name=letters[1:5], value=c(12,34,54,23,21), sd=c(1,0,3,4,2))
data
ggplot(data) + 
  geom_bar(aes(x=name, y=value), stat='identity', fill='cyan', alpha=0.9) +
  geom_errorbar(aes(x=name,ymin=value-sd, ymax=value+sd),width=0.5, colour='red', alpha= 0.5, size=0.8 )


# use for to change bar widths

library(plotly)

x = c(12,15,18,23,32)
y = c(10,20,30,40,50)

width= c(0.5,0.9,1.2,0.6,0.5)
data = data.frame(x, y, width)

data
fig =  plot_ly(data)
fig 
fig= fig %>% add_bars(x=~x, y=~y, width=~width)

fig

# where this graph is used: 









