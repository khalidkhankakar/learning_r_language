library(tidyr)
# Example 1: Basic wide to long transformation
wide_data <- data.frame(
  name = c("Alice", "Bob"),
  math_2022 = c(90, 85),
  math_2023 = c(92, 88),
  science_2022 = c(85, 80),
  science_2023 = c(88, 82)
)
wide_data

long_data <- wide_data %>% 
  pivot_longer(
    cols = -name,
    names_to = c('.value', 'year'),
    names_sep = '-'
  )
long_data


long_example <- data.frame(
  student = rep(c("Alice", "Bob"), each = 4),
  subject = rep(c("math", "science"), times = 4),
  year = rep(c(2022, 2023), each = 2, times = 2),
  score = c(90, 85, 92, 88, 85, 80, 88, 82)
)
long_example


wide_example = long_example %>% pivot_wider(
  names_from = c(subject, year),
  values_from = score
)

wide_example


# replace the na values
df_missing = data.frame(
  x= c(1,3,NA),
  y= c('khalid', NA, "khan")
)
df_missing

df_replace_na = df_missing %>% replace_na(
  list(x = 0, y = 'unknown')
  
)
df_replace_na

# Remove the na values in data.frame
cleaned_df = df_missing %>% drop_na()
cleaned_df


# Separate and unite 
names_df = data.frame(
  full_name = c('khalid kakar', 'Shahzaib khan', 'Mubeen Durrani', 'MI Syed')
)
names_df

# separate the names by space 
separated_names = names_df %>% separate(
  full_name, 
  into = c('first_name', 'last_name'),
  sep= ' '
)
separated_names


# unite the names 
unite_names = separated_names %>% unite(
  'full_name',
  first_name, 
  last_name,
  sep = ' '
)
unite_names










