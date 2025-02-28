# dplyr: dplyr is data manipulation library that help to think about data manipulation challenges.
# It provides simple “verbs”, functions that correspond to the most common data manipulation tasks, to help you translate your thoughts into code.



library(dplyr)
head(mtcars)

mtcars %>% select(mpg, cyl, hp)

# filter the rows
mtcars %>% filter(hp > 100)

# sort by descending
mtcars %>% arrange(desc(mpg))


head(starwars)

# filter
starwars %>% filter(skin_color == 'fair', eye_color=='blue', sex=='female')

starwars[starwars$skin_color == 'fair' & starwars$eye_color=='blue' & starwars$sex=='female',]

# arrange 
starwars %>% arrange(height, mass)
starwars %>% arrange(desc(height))

# slice
starwars %>% slice(23:30)

starwars %>% slice_tail(n=10) # taking 10 entries from the bottom
starwars %>% slice_head(n=12) # taking 12 entries from the top
starwars %>% slice_sample(n=5) # taking the 5 random data

# chaining of operations
starwars %>%
  filter(!is.na(height)) %>% # filter the all null values
  slice_max(height, n=3) # getting the only 3 entries with maximum heights


# selecting
starwars %>% select(height, skin_color, sex)

# Select all columns between hair_color and eye_color (inclusive)
starwars %>% select(hair_color:eye_color)

# Select all columns except those from hair_color to eye_color (exclusive)
starwars %>% select(!(hair_color:eye_color))

# Select all columns ending with color
starwars %>% select(ends_with('color'))

