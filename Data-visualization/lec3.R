library(rAmCharts4)
dat = data.frame(
  group = c('A', 'B', 'C', 'D'),
  fr = c(23,45,34,43)
)


amPieChart(
  data= dat,
  category = 'group',
  value= 'fr',
  threeD=T,
  variableDepth=T
)


library(ggplot2)
library(webr)
library(dplyr)
data = as.data.frame(Titanic)
print(data)
head(data)
tail(data)

pd = data %>% group_by(Class, Survived) %>% summarise(n=sum(Freq))
print(pd)


# explodeDonut = 1
# r0 = 0.4, r1 = 0.9,r2 = .7 is used for radius
PieDonut(pd,
         aes(Class, Survived, count=n),
         title = 'Titanic surivied by Class',
         explode = 1,
         ratioByGroup = F)

PieDonut(pd, 
         aes(Survived, Class,count=n),
         title = 'Titanic surivied by Survived',
         explode =
           2)



