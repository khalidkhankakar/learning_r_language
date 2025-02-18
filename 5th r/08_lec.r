# One way ANOVA
size = c(2,4,3,2,4,7,5,3,2,9,5,3) # output
population = c('A','A','A','A','B','B','B','B','C','C','C','C') # input or treatment a catigoral variable 


anovaModel = aov(size ~ population)
# print(anovaModel)

# Applying the post of test

tukey = TukeyHSD(anovaModel)
# print(tukey)

# --------------------------------------------------------------

x1 = data.frame(
    x=rep(c('my1', 'my2', 'my3')),
    each = 5,
    y = c(
        12,13,14,15,16,
        17,18,19,20,21,
        22,23,24,25,16
        )
    )
# print(head(x1))
# print(table(x1))
# print(x1)

# view the summary of one-way ANOVA
model2 = aov(formula = y ~ x, data = x1)
anotherOneWayAnova = summary(model2)
print(anotherOneWayAnova)

# tukey test
tukey2 = TukeyHSD(model2)
print(tukey2)

# ---------------------------------------------------------
# Paper pattern ***

# 1. Take two vectors 

#     (i). Take treatment vector which store treatments like A, B, C in this case
#     (ii). Take response vector write the response variable in this case size

# 2. use the aov function 

# 3.apply the tukey test