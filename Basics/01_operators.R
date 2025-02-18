# Arithematic Operators 
num1 <- 12
num2 <- 10

print(num1 + num2)

print(num1 - num2)

print(num1 * num2)

print(num1 / num2)

print(num1 %% num2)

print(num1 ^ num2)

print(num1 %/% num2)

# Reational (comparision) Operators 
x <- 10
y <- 5
print(x == y)  # FALSE
print(x != y)  # TRUE
print(x > y)   # TRUE
print(x < y)   # FALSE
print(x >= y)  # TRUE
print(x <= y)  # FALSE

# Logical Operators
a <- TRUE
b <- FALSE
print(a & b)   # FALSE
print(a | b)   # TRUE
print(!a)      # FALSE
print(a && b)  # FALSE
print(a || b)  # TRUE

# Define two logical vectors
a <- c(TRUE, FALSE, TRUE)
b <- c(FALSE, TRUE, TRUE)

# Using & (Element-wise AND)
print(a & b)  # Compares each element
# Output: FALSE FALSE TRUE

# Using && (Logical AND)
print(a[1] && b[1])  # Compares only the single value (TRUE && FALSE)
# Output: FALSE

# Using | (Element-wise OR)
print(a | b)  # Compares each element
# Output: TRUE TRUE TRUE

# Using || (Logical OR)
print(a[1] || b[1])  # Compares only the single value (TRUE || FALSE)
# Output: TRUE

# Assignment Operators
x <- 10   # Assign 10 to x
y <<- 20  # Assign 20 to y globally
10 -> z   # Assign 10 to z

print(x)
print(y)
print(z)

# Special Operators

# a) Sequence Operator
print(1:5)  # 1 2 3 4 5

# b) Matric Multiplication
 

# c) Modulus (%%) and Integer Division (%/%)
print(10 %% 3)  # 1
print(10 %/% 3) # 3

# d) Element-wise Multiplication (*) vs. Matrix Multiplication (%*%)
A <- matrix(c(1,2,3,4), nrow=2)
B <- matrix(c(5,6,7,8), nrow=2)
print(A * B)   # Element-wise multiplication
print(A %*% B) # Matrix multiplication

# e) In Operator (%in%)
print(3 %in% c(1, 2, 3, 4))  # TRUE
print(5 %in% c(1, 2, 3, 4))  # FALSE

# f) Outer Product (%o%)
x <- c(1,2)
y <- c(3,4)
print(x %o% y)


