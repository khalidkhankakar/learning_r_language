data = matrix(c(2,3,4,3,4,3,9,21,4,3,3,6,4,4,7), nrow=3, ncol=5, byrow = TRUE)
colors = c('cyan', 'green', 'blue')
month = c('Jan', 'Feb', 'Mar', 'Apr', 'May')

# component chart
barplot(data, beside = TRUE, col = colors, names.arg = month, main = 'Component Chart', xlab = 'Month', ylab = 'Value',border = 'red')


regions = c('North', 'South', 'East')
legend('topright', regions, fill = colors, title = 'Regions')


library(plotly)
x = c('january', 'february', 'march', 'april', 'may', 'june', 'july', 'august', 'september', 'october', 'november', 'december')
y1= c(2,3,4,3,4,3,9,21,4,3,3,6)
y2 =c(3,4,2,4,5,6,7,8,9,10,11,12)
data = data.frame(x, y1, y2)
data
datax = factor(data$x, levels = data[['x']])
datax
fig = plot_ly(data, x = ~x, y = ~y1, type = 'bar', name = 'product', marker = list(color= 'rgb(255, 97,127'))
fig

fig = fig %>% add_trace(y = ~y2, name = 'sales', marker = list(color = 'rgb(233, 122, 255)'))
fig


fig = fig %>% layout(
  xaxis = list(title = 'Months', tickangle=90),
  yaxis = list(title = 'Value'),
  margin= list(b= 100),
  barmode = 'group'
  )
fig

