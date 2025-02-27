# Bulit in Functions
ages_of_class_stu = c(12,23,34,64,23,33)
sum(ages_of_class_stu)

# User defined functions
add_numbers = function(a,b){
  sum = a + b
  return(sum)
}
add_numbers(12,12)

# Default argument
greet <- function(user = 'User'){
  print(paste('Hello', user, '!'))
}
greet("khalid")
greet()


math_operations <- function(a, b) {
  sum <- a + b
  product <- a * b
  return(list(SumOfNumbers = sum, ProductOfNumbers = product))
}

result <- math_operations(4, 5)
print(result)


# Anonymous (Lambda) function
(sq = function(x) x^2)
sq(2)

# Recursive function
fac = function(n){
  if(n==1){
    return(1)
  }
  return(n * fac(n-1))
}
fac(5)

