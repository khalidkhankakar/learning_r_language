# Here is list of reserved keywords in r language
#if
# else
# while
# repeat
# for
# function
# in
# next
# break
# TRUE
# FALSE
# NULL
# Inf
# NaN
# NA
# NA_integer
# NA_real
# NA_complex_
# NA_character_

# R program to illustrate if statement 

# assigning value to variable a 
a <- 5 

# condition 
if( a > 0 ) 
{ 
  print("Positive Number") # Statement 
} 

x <- 5 

# Check value is less than or greater than 10 
if(x > 10) 
{ 
  print(paste(x, "is greater than 10")) 
} else
{ 
  print(paste(x, "is less than 10")) 
} 

# R program to demonstrate the use of while loop 

val = 1 

# using while loop 
while (val <= 5 ) 
{ 
  # statements 
  print(val) 
  val = val + 1 
} 
# R program to demonstrate the use of repeat loop 

val = 1 

# using repeat loop 
repeat
{ 
  # statements 
  print(val) 
  val = val + 1 
  
  # checking stop condition 
  if(val > 5) 
  { 
    # using break statement 
    # to terminate the loop 
    break
  } 
} 


# DATA TYPES
# numeric – (3,6.7,121)
# Integer – (2L, 42L; where ‘L’ declares this as an integer)
# logical – (‘True’)
# complex – (7 + 5i; where ‘i’ is imaginary number)
# character – (“a”, “B”, “c is third”, “69”)
# raw – ( as.raw(55); raw creates a raw vector of the specified length)


# A simple R program
# to find data type of an object

# Logical
print(class(TRUE))

# Integer
print(class(3L))

# Numeric
print(class(10.5))

# Complex
print(class(1+2i))

# Character
print(class("12-04-2020"))


# A simple R program
# Verify if an object is of a certain datatype

# Logical
print(is.logical(TRUE))

# Integer
print(is.integer(3L))

# Numeric
print(is.numeric(10.5))

# Complex
print(is.complex(1+2i))

# Character
print(is.character("12-04-2020"))

print(is.integer("a"))

print(is.numeric(2+3i))

# A simple R program
# convert data type of an object to another

# Logical
print(as.numeric(TRUE))

# Integer
print(as.complex(3L))

# Numeric
print(as.logical(10.5))

# Complex
print(as.character(1+2i))

# Can't possible
print(as.numeric("12-04-2020"))



