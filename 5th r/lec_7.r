# TODO: simple sample t test
score = c(12,23,45,67,78,56,42,23)

simpleTest = t.test(score, mu=50)
print(simpleTest)
print('-------------------------------------')
# Indepandant sample t test
# doesn't depand on sample size of each group
x1 = c(5, 7, 8, 6, 9, 7,5,3)  # Group 1 values
x2 = c(6, 8, 9, 10, 6, 8) # Group 2 values

indSample = t.test(x1, x2, var.equal = TRUE)
# print(indSample)

# Putting the random data
set.seed(10)
shop1 = rnorm(12, mean= 160, sd = 0.1)
shop2 = rnorm(13, mean= 170, sd = 0.3)
indSample2 = t.test(shop1, shop2, var.equal = TRUE)
print(indSample2)
print('-------------------------------------')




# Paired sample t test
# This is apply on population means
x3 = c(1,2,45,74,2,84)
x4 = c(9,6,54,1,1,4,7)

pairedTest = t.test(x3,x4, pairedTest=TRUE)
print(pairedTest)


set.seed(10)
vec1 = rnorm(12, mean= 30, sd = 0.1)
vec2 = rnorm(12, mean= 50, sd = 0.3)
pairedTest2 = t.test(vec1, vec2,pairedTest=TRUE) 
# print(pairedTest2)


# Chi square test
