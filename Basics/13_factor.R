# Factor: A factor in R is a data structure used to handle categorical data. Factors are useful when dealing with variables that have a fixed and limited set of values, such as gender, education level, or country names.
# Used to store categorical variables efficiently.
# Can be ordered (ordinal) or unordered (nominal).

gender = factor(c('Male', 'Female', 'Trans','Male', 'Female', 'Trans'))
gender
levels(gender)

gender = factor(c('Male', 'Female', 'Trans','Male', 'Female', 'Trans'), levels = c('Male', 'Female', 'Trans'))
levels(gender)
gender


# ordered is use for hierarchical categories
education <- factor(c("High School", "Bachelor", "Master", "PhD", "Bachelor"),
                    levels = c("High School", "Bachelor", "Master", "PhD"),
                    ordered = TRUE)

# Print the ordered factor
print(education)
is.ordered(education)

as.character(education)

as.numeric(education)

# changing the levels
levels(education) =  c("HS", "BSc", "MSc", "Doctorate")
education

# Adding a new level "Diploma"
levels(education) <- c(levels(education), "Diploma")

# Print levels
levels(education)

# Removing the levels
education = education[education != 'Msc']
levels(education)
# NOTE it will still appear
# to drop it
education = droplevels(education)
levels(education)

table(education)

sort(education)

education[1] > education[2] 

is.factor(education)
education[1]
education[c(2, 4)]







age <- c(40, 49, 48, 40, 67, 52, 53)  
salary <- c(103200, 106200, 150200,
            10606, 10390, 14070, 10220)
gender <- c("male", "male", "transgender", 
            "female", "male", "female", "transgender")
employee<- data.frame(age, salary, gender)  
print(employee)  
print(is.factor(employee$gender)) 

print(as.factor(employee$gender)) 
