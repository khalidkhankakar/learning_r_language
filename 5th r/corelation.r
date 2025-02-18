# Requirements of Corelation
# Relationship between two variables what is affect of one variable on another variable when it vaires.
# Answer will b/w this range:- (-1 < x < +1)
# Formula:- 
# x and y are numeric vectors
# x and y are of the same length
# x and y are not identical


x = c(10, 20, 30, 40, 50,100);
y = c(5, 15, 25, 45, 35, 55);

# method can: 'pearson', 'kendall', 'spearman'

# Pearson 
# pearsonCo = cor(x,y, method = 'pearson')
# pearsonCo = cor(x,y, method = 'kendall')
pearsonCo = cor(x,y, method = 'spearman')
# print(pearsonCo)

# line Graph
 
# plot(x,y, main = 'Pearson Corelation Plot', xlab = 'x axis', ylab = 'y axis',pch=19,col='red')

# Corelation test also check the p value
corTest = cor.test(x,y)
# print(corTest)



# ------------------------------------------------------------------

# Example Data Frame
data <- data.frame(
  var1 = c(1, 2, 3, 4, 5),
  var2 = c(2, 4, 6, 8, 10),
  var3 = c(5, 4, 3, 2, 1)
)

# Correlation Matrix
cor_matrix <- cor(data)
# print(cor_matrix)

