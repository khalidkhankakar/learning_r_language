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

# --------------
# Reshape the Data
students_wide <- data.frame(
  student_id = c(1, 2, 3),
  math = c(85, 90, 78),
  science = c(92, 88, 85),
  history = c(78, 95, 80)
)

print("Original wide data:")
print(students_wide)


student_long = students_wide %>% pivot_longer(
  cols = c(math, science, history),
  names_to = 'subject',
  values_to = 'score'
)

student_long


student_again_wide = student_long %>% pivot_wider(
  names_from = subject,
  values_from = score
)

student_again_wide



# example 2
measurements <- data.frame(
  patient_id = rep(c("P1", "P2", "P3"), each = 3),
  visit = rep(c("Baseline", "Week4", "Week8"), 3),
  blood_pressure = c(120, 118, 115, 142, 135, 130, 128, 127, 125),
  heart_rate = c(72, 70, 68, 80, 79, 77, 74, 73, 72),
  weight = c(80, 79, 78, 90, 89, 87, 65, 64, 64)
)

print("Original measurements data:")
print(measurements)

measurements_long = measurements %>% pivot_longer(
  cols = c(blood_pressure, heart_rate, weight),
  names_to = 'measurement_type',
  values_to = 'value'
)
measurements_long


measurements_wide = measurements_long %>% pivot_wider(
  names_from = measurement_type,
  values_from = value
)

measurements_wide



# example 3

missing_data <- data.frame(
  id = c(1, 1, 2, 2),
  year = c(2022, 2023, 2022, 2023),
  q1 = c(10, NA, 15, 18),
  q2 = c(12, 14, NA, 20),
  q3 = c(15, 16, 18, NA),
  q4 = c(NA, 18, 20, 22)
)

print("Data with missing values:")
print(missing_data)

missing_long = missing_data %>% pivot_longer(
  cols = starts_with('q'),
  names_to = 'quarter',
  values_to = 'revenue',
  values_drop_na = TRUE
)

missing_long


repeated_measures <- data.frame(
  patient = c(1, 1, 1, 2, 2, 2),
  visit = c("Baseline", "Month1", "Month3", "Baseline", "Month1", "Month3"),
  sys_bp = c(140, 135, 130, 150, 145, 140),
  dia_bp = c(90, 88, 85, 95, 93, 90),
  weight = c(80, 79, 78, 90, 88, 85)
)

print("Repeated measures dataset:")
print(repeated_measures)


all_metrics <- repeated_measures %>%
  pivot_longer(
    cols = c(sys_bp, dia_bp, weight),
    names_to = "metric",
    values_to = "value"
  )

print("All metrics in one column:")
print(all_metrics)


time_series <- all_metrics %>%
  pivot_wider(
    id_cols = c(patient, metric),
    names_from = visit,
    values_from = value
  )

print("Time series format:")
print(time_series)



student_scores <- data.frame(
  student_id = rep(1:3, each = 4),
  semester = rep(c("Fall_2022", "Spring_2023"), each = 2, times = 3),
  test_type = rep(c("Midterm", "Final"), times = 6),
  math_score = sample(70:100, 12),
  science_score = sample(70:100, 12)
)

print("Original student scores:")
print(student_scores)

# Multi-step transformation
final_result <- student_scores %>%
  # Step 1: Make all scores in one column
  pivot_longer(
    cols = ends_with("_score"),
    names_to = "subject",
    values_to = "score",
    names_pattern = "(.+)_score"
  ) %>%
  # Step 2: Split the semester column
  separate(
    semester,
    into = c("term", "year"),
    sep = "_"
  ) %>%
  # Step 3: Create a unique test identifier
  unite(
    "test_id",
    test_type, term, year,
    sep = "_"
  ) %>%
  # Step 4: Pivot to wide format with tests as columns
  pivot_wider(
    id_cols = c(student_id, subject),
    names_from = test_id,
    values_from = score
  )

print("Final transformed data:")
print(final_result)


# Understanding Cell Splitting and Combining Functions in tidyr

names_df = data.frame(
  first_name = c("John", "Jane", "Robert"),
  last_name = c("Smith", "Doe", "Johnson")
)
print("Original names data:")
print(names_df)


full_names = names_df  %>% unite(
  col = 'full_name',
  first_name,
  last_name,
  sep=' '
)
full_names


# ---------- Unite with multiple columns ----------
# Create data with date components
dates_df <- data.frame(
  id = 1:3,
  year = c(2022, 2023, 2022),
  month = c(5, 6, 12),
  day = c(15, 21, 7)
)
print("Original date components:")
print(dates_df)

dates_united = dates_df %>% unite(
  col = 'date',
  year,
  month,
  day,
  sep='/'
)

dates_united

dates_with_na <- data.frame(
  id = 1:3,
  year = c(2022, 2023, 2022),
  month = c(5, NA, 12),
  day = c(15, 21, NA)
)

print("Date components with NAs:")
print(dates_with_na)

# Unite with NA handling
dates_na_handled <- dates_with_na %>%
  unite(
    "date", 
    year, month, day, 
    sep = "-",
    na.rm = TRUE              # Remove NA values
  )

print("Dates after unite() with NA removal:")
print(dates_na_handled)


# Separating
full_names_df <- data.frame(
  id = 1:3,
  full_name = c("John Smith", "Jane Doe", "Robert Johnson")
)

print("Original full names:")
print(full_names_df)

names_separated = full_names_df %>% separate(
  col = full_name,
  into = c('first_name', 'last_name'),
  sep = ' '
)

names_separated


mixed_data <- data.frame(
  id = 1:3,
  date_info = c("2022-05-15", "2023/06/21", "2022.12.07")
)

print("Mixed date formats:")
print(mixed_data)

dates_separated = mixed_data %>% separate(
  col = date_info,
  into = c('year', 'month', 'day'),
  sep = '[\\-\\/\\.]'
)

dates_separated

# Expand 
fruits <- c("apple", "banana", "orange")
sizes <- c("small", "medium", "large")

# Generate all combinations
fruit_sizes <- expand(data.frame(), fruit = fruits, size = sizes)

print("All combinations of fruits and sizes:")
print(fruit_sizes)


sales <- data.frame(
  product = c("A", "B", "A", "C"),
  size = c("small", "medium", "large", "small"),
  sales = c(10, 15, 20, 5)
)

print("Original sales data:")
print(sales)

# Generate all combinations from existing data
all_combinations <- sales %>%
  expand(product, size)

print("All combinations from sales data:")
print(all_combinations)


dates_products <- expand(
  data.frame(),
  date = seq(as.Date("2023-01-01"), as.Date("2023-01-05"), by = "day"),
  product = c("Widget", "Gadget", "Doodad")
)

print("Grid of dates and products:")
print(dates_products)

