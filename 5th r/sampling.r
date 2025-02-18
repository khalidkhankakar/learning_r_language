# simple random sampling
# systematic sampling
# cluster sampling
# Straitiedfied sampling

# simple random sampling
population <- 1:100  # Population of 100 elements

# Simple Random Sampling (n = 10)
set.seed(123)  # Setting seed for reproducibility
sample_data <- sample(population, size = 10)
print(sample_data)

# systematic sampling
# TeachingSampling

library(TeachingSampling)

d = c("Mon", "Tue", "Wed", "Thu", "Fri","Sat","Sun")

set.seed(123)
sys_samp = S.SY(7,2);sys_samp

# printing the sample for vector d 
# print(d[sys_samp])



# Straitiedfied sampling

set.seed(123)

dataF = data.frame(
    Id = 1:50,
    Gender = sample(c('Male', 'Female','Transgender'),size = 50, replace = TRUE),
    #               x, mean, sd
    Income = rnorm(50,50000,1000)
)
# This only print 6 entries of dataframe
# print(head(dataF))

# This prints the whole dataframe
# print(dataF)



