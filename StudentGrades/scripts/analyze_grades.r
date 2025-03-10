 # Load the data from grades.csv
setwd("/home/ching/Desktop/StudentGrades/scripts/") # Adjust path if needed
grades_data <- read.csv("grades.csv")

# Basic Analysis
average_grade <- mean(grades_data$Grade)
print(paste("Average Grade:", average_grade))

highest_grade <- max(grades_data$Grade)
highest_student <- grades_data$Student[which.max(grades_data$Grade)]
print(paste("Highest Grade:", highest_grade, "by", highest_student))

lowest_grade <- min(grades_data$Grade)
lowest_student <- grades_data$Student[which.min(grades_data$Grade)]
print(paste("Lowest Grade:", lowest_grade, "by", lowest_student))

std_dev <- sd(grades_data$Grade)
print(paste("Standard Deviation:", std_dev))

summary(grades_data$Grade)

# Visualization
if (!requireNamespace("ggplot2", quietly = TRUE)) {
  install.packages("ggplot2")
}
library(ggplot2)

ggplot(grades_data, aes(x = Student, y = Grade)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = "Student Grades", x = "Student", y = "Grade") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
