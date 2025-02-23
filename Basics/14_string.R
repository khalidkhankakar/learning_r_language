# String :- A string in R is a sequence of characters enclosed within double (" ") or single (' ') quotes. Strings in R are represented as character vectors and stored as character data type.
str1 <- "Hello, R!"
str2 <- 'This is a string example'

class(str1)  

# We use nchar() to count the number of characters (including spaces).
text <- "R Programming"
nchar(text)

str1 <- "Hello"
str2 <- "World"

# Concatenate with a space
result <- paste(str1, str2)
print(result)

result <- paste0(str1, str2)  # No space
print(result)

result <- paste(str1, str2, sep = "-")
print(result)
