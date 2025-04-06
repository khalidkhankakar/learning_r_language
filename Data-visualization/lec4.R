x = c(12,34,54,23,21,65,32)

# Bar chart
barplot(x, xlab = 'Audience', ylab = 'Count', 
        col = "blue", col.axis='red', col.lab='purple')


# Horizontal bar chart
barplot(x, xlab = 'Count', ylab = 'Audience', 
        col = "blue", col.axis='red', col.lab='purple',
        horiz = TRUE)


x1 = c(12,34,54,23,21)
x2 = c('khalid', 'khan', 'kakar', 'fahad', 'Ahmad')

# cex.main=1.5, cex.lab=.1, cex.axis= 1 used for different font sizes

barplot(x1,
        names.arg = x2, xlab = 'Boys', ylab = 'Power',
        col = heat.colors(5), main = 'Friends',
        cex.main=2, cex.lab=1, cex.axis= 2)


library(tidyr)
library(ggplot2)
library(dplyr)

data_1 = iris[ , 1:4]
print(data_1)
head(data_1)
 data_1 %>% 
  gather(key='MeasureType',value = 'val' ) %>%
  ggplot(aes(x=MeasureType, y=val ), fill(MeasureType)) + geom_violin()

# data_1 <- iris[, 1:4] %>%
#   pivot_longer(cols = everything(), names_to = "MeasureType", values_to = "Val")
# 
# # Create the violin plot
# ggplot(data_1, aes(x = MeasureType, y = Val, fill = MeasureType)) +
#   geom_violin() +
#   labs(title = "Violin Plot of Iris Measurements",
#        x = "Measurement Type",
#        y = "Value") +
#   theme_minimal()

