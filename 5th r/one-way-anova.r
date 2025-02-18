# One Way Anova
# Method 1

test_score <- c(
    65, 70, 68, 72, 75, 74, 69, 71, 66, 73, 68, 67, 70, 72, 69,
    78, 80, 82, 79, 77, 83, 81, 84, 85, 79, 78, 82, 81, 80, 83,
    58, 60, 62, 59, 61, 63, 64, 60, 59, 62, 61, 58, 60, 63, 64
    )
# Three groups: Lecture, Activity, Online

group <- c(
    "Lecture", "Lecture", "Lecture", "Lecture", "Lecture", 
    "Lecture", "Lecture", "Lecture", "Lecture", "Lecture",
    "Lecture", "Lecture", "Lecture", "Lecture", "Lecture",
    "Activity", "Activity", "Activity", "Activity", "Activity",
    "Activity", "Activity", "Activity", "Activity", "Activity",
    "Activity", "Activity", "Activity", "Activity", "Activity",
    "Online", "Online", "Online", "Online", "Online", "Online",
    "Online", "Online", "Online", "Online", "Online", "Online",
    "Online", "Online", "Online"
)

anovaModel = aov(test_score ~ group)
print(anovaModel)

# Tukey Test
tukey = TukeyHSD(anovaModel)
# print(tukey)
print('-------------------------------------')
# Method 2

student <- data.frame(
    TeachingMethod = rep(c("Lecture", "Activity", "Online"), each=15),
    TestScore= c(
    c(65, 70, 68, 72, 75, 74, 69, 71, 66, 73, 68, 67, 70, 72, 69), # Lecture
    c(78, 80, 82, 79, 77, 83, 81, 84, 85, 79, 78, 82, 81, 80, 83), # Activity
    c(58, 60, 62, 59, 61, 63, 64, 60, 59, 62, 61, 58, 60, 63, 64)  # Online
    )
)

head_model = head(student)
# print(head_model)

oneWayAnova = aov(TestScore ~ TeachingMethod, data = student)
print(oneWayAnova)