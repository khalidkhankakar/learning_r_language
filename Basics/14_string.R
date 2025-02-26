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

# Extracting the substring

text = 'Data Science '
new_text = substr(text, 1, 4)
new_text

toupper(text)
tolower(text)

k = 'Khalid now learning the r language and the will do the best.'
# Replace the parts of the string: Changing the all occurrence
gsub('the', '---', k)

# Replace the first occurrence
t = 'khalid is good and he is great'

sub('is', '???', t)

# split the string
text <- "apple,banana,grape"
words <- strsplit(text, ",")
print(words)

# Using grepl() (Returns TRUE/FALSE
text <- "Data Science in R"
grepl("Science", text)


words <- c("apple", "banana", "grape", "orange")
grep("an", words)
# "an" appears in "banana" (index 2) and "orange" (index 4).

# Formatting the string
name <- "Khalid"
age <- 20
sprintf('My name is %s and I am %s year old', name, age)
