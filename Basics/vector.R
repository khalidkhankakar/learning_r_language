# Vector index is starts with 1 not 0
v <- c(2,4,6,8,10,12,14,16)

print(typeof(v))

# sequence_vector: here by means step or jump
seq_vec <- seq(1,12, by=1)
print(seq_vec)

req_vec = rep(5, times=4)
print(req_vec)

# Accessing the element in vector

print(v[4])

print(v[c(2,6)])

print(v[c(2:6)])

print(v[-2]) # exclude the element

a <- c(1, 2, 3, 4)
b <- c(5, 6, 7, 8)

sum_vec <- a + b    # Element-wise addition
diff_vec <- a - b   # Subtraction
prod_vec <- a * b   # Multiplication
div_vec <- a / b    # Division
mod_vec <- a %% b   # Modulus
pow_vec <- a ^ b   # Power

print(sum_vec)
print(diff_vec)
print(prod_vec)
print(div_vec)
print(mod_vec)
print(pow_vec)


x <- c(5, 10, 15, 20)
y <- c(10, 10, 10, 10)

print(x > y)   # Greater than
print(x < y)   # Less than
print(x == y)  # Equal to
print(x != y)  # Not equal
print(x >= y)  # Greater than or equal
print(x <= y)  # Less than or equal


vec <- c(1, 2, 3, 4, 5, 6)

print(length(vec))   # Number of elements
print(sum(vec))      # Sum of elements
print(mean(vec))     # Mean
print(median(vec))   # Median
print(sd(vec))       # Standard deviation
print(max(vec))      # Maximum value
print(min(vec))      # Minimum value
print(sort(vec))     # Sorting in ascending order
print(sort(vec, decreasing=TRUE))  # Sorting in descending order
print(range(vec))
print(replace(vec, 3, 636))

nums <- c(10, 15, 20, 25, 30, 35)

filtered_nums <- nums[nums > 20]  # Select numbers greater than 20

print(filtered_nums)


vec1 <- c(1, 2, 3)
vec2 <- c(4, 5, 6)

combined_vec <- c(vec1, vec2)
print(combined_vec)


salary <- c(5000, 7000, 6000)
names(salary) <- c("John", "Alice", "Bob")

print(salary)
print(salary["Alice"])


my_vec <- c(2,4,5,32,33,4)
print(my_vec[my_vec>10])

my_vec[3] = 222
print(my_vec)

x <- 1:5
n <- 6:10

# Append using c() function
y <- c(x, n)
y
l <- letters[1:5]

mx <- append(x, l)
mx


# Dot product on Vectors
A <- c(1, 2, 3)
B <- c(4, 5, 6)

# Compute dot product
dot_product <- A %*% B

# 1×4+2×5+3×6=4+10+18=32
print(dot_product)

V2 = c(1.5, TRUE, 4, "Geeks") 

# Printing the Vector 
print(V2) 

V = 1.5 : 9.5 

# Printing the vector 
print(V) 

V = seq(1, 10, length.out=5)     

# Printing the vector 
print(V) 

my_date = Sys.time()
my_date
format(my_date, format = '%B %d, %Y')

substring('KhalidKhanKakar', 2,6)
