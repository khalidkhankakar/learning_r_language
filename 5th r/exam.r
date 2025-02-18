library(plotrix)
# BloodGroup = c('A', 'B','O','AB')
# Frequency <- c(20, 28, 36, 16)
# pie3D(Frequency, labels =BloodGroup, main = 'Blood groups', col = heat.colors(length(x)), border = 'green')


# bar chart
# values = matrix(c(4500,1600,4400,3245, 2870,5645,6545,5675,6754,3985,8900,9768,7786,6855,8976,9008,8965,3200,5678,5643,7865,3456,4555,2233,6547),  nrow=4,  ncol =6,  byrow = FALSE)
# barplot(values,  main = "Manufactures", xlab = "All Months",  ylab = "Sales", beside =TRUE,  names.arg=c('Jan','Feb', 'Mar','Apr','May','June'),col= heat.colors(6))

# Q2 Multiple Reg
# y = c(36,38,41,43,45,48,50,52,55, 58,53)
# x1 = c(35,38,39,40,42,45,46,46,48,44,43)
# x2 = c(50,55,56,56,60,60,62,64,65,63,61)
# x3= c(10,12,11,11,12,12,13,13,14,14,12)

# data <- data.frame(y, x1, x2,x3)


# model <- lm(y ~ x1 + x2+x3, data = data)

# print(summary(model))

# print(cor(x1,x2, method = 'pearson'))
# print(cor(x1,x3, method = 'pearson'))
# print(cor(x2,x3, method = 'pearson'))

# Q3 
courseA = c(70,76,77,73,72,68,74,75,75,69,67,68)
courseB = c(77,83,92,85,82,84,80,78,91,93,80,87)
t.test(courseA, courseB, paired = TRUE)


# Q4 

dat1 <- data.frame(
    Temp = rep(c("P1", "P2",'P3',"P4",'P5'), each = 4),
    Pre = rep(c("t1", "t2", "t3","t4"), times = 5, each=1),
    prevalues =  c(
    1.9,2.5,2.7,1.6,2.1
    ,2.5,1.9,2.3,2.6,2.4,
    1.7,1.9,2.2,2,2.1,
    2.2,2.6,1.8,1.9,2.3))


twoWayAnovaModel <- aov(prevalues ~ Temp + Pre, data = dat1)

twoWayAnova <- summary(twoWayAnovaModel)
print(twoWayAnova)










