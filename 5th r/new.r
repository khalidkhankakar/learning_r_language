# Question 1:
dat = data.frame(
    treatment = rep(c('A','B','C','D'),each=8),
    temperature = rep(c('Mild','Low','High','Extreme'),each = 2,times=4),
    effect = c(
        1.9,2.3,2.5,2.9,2.7,3.4,1.6,1.9,
        2.5,3.0,1.9,2.3,2.3,2.5,2.6,2.3,
        1.7,2.5,1.9,1.7,2.2,2.1,2,1.9,
        2.2,2.9,2.6,2.4,1.8,1.6,1.9,1.8
    )
)

# Table
print(dat)

model = aov(effect ~ treatment * temperature, data=dat)

twoWayAnova = summary(model)

# print(twoWayAnova)


# -------------------------------
# Question 2

set.seed(10)

conventional_method = c(70,76,77,73,72,68,74,75,75,69,67,68)
modern_method = c(77,83,92,85,82,84,80,78,91,93,80,87)

# a) both samples were drawn from two different normal populations with equal variances.  

# We will use th two indepandant sample t test because sample is indepandant

indepandant_sample_t_test = t.test(conventional_method, modern_method, var.equal = TRUE)

# print(indepandant_sample_t_test)



# b) same course was taught to same sample of 12 students with different techniques.  

# We will use th two indepandant sample t test because sample is taken from same population

paired_sample_t_test = t.test(conventional_method, modern_method, paired = TRUE)

# print(paired_sample_t_test)