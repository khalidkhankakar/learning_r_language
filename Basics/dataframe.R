# Dataframe: A data frame is a two-dimensional tabular structure in R, similar to a spreadsheet or SQL table. It allows heterogeneous data types (i.e., different columns can have different data types like numeric, character, or factor).
df <- data.frame(
  id = c(1,2,3,4,5),
  name = c('Khalid', 'Khan', 'Kakar', 'Idress', 'Junaid'),
  fav_char = letters[1:5],
  Age = c(25, 30, 22, 28,34),
  Score = c(90, 85, 88, 92,33)
)
df

print(df$name)
print(df['Age'])
print(df[['Age']])
print(df$name[1])

# Adding the new column
df$Grade <- c("A", "B", "A", "A", "F")
df

# Adding the new column
new_row = data.frame(id=6, name='Shahzaib',fav_char='f', Age=34, Score=67, Grade='C')
df = rbind(df, new_row)
df

# Removing the column
df$fav_char <- NULL
df


# Filtering
df[df$Age > 28,]

df[df$name == 'Kakar',]

# Subsetting
df[, c('name', 'Age')]

# Order Asc & Des
df[order(df$Score),]

df[order(-df$Score),]


# Merging the dataframe
df1 = data.frame(
  id= c(1:4),
  let = letters[1:4]
)

df1

df2 = data.frame(
  id= c(5:9),
  let = letters[5:9]
)

df2


merge_df1_df2 = merge(df1, df2, all =TRUE)
merge_df1_df2

print(as.matrix(df1))
print(as.list(df1))
print(unlist(df))
