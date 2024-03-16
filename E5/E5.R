# Load required libraries
library(ggplot2)

# Load the dataset
data <- read.csv("Financial.csv")

# Check unique levels of Variable_category
unique_levels <- unique(data$Variable_category)

# Check if there are at least two distinct levels
if (length(unique_levels) < 2) {
  # Print a message indicating the issue
  cat("Variable_category does not have enough distinct levels for regression analysis.\n")
  # Optionally, you might need to investigate and handle this issue accordingly
} else {
  # Ensure Variable_name is numeric
  data$Variable_name <- as.numeric(data$Variable_name)
  
  # Perform linear regression
  linear_model <- lm(Variable_name ~ Variable_category, data = data)
  
  # Perform multiple regression
  multiple_model <- lm(Variable_name ~ Variable_category + Value, data = data)
  
  # Perform polynomial regression
  poly_model <- lm(Variable_name ~ poly(Variable_category, degree = 2), data = data)
  
  # Evaluate model performance
  summary(linear_model)
  summary(multiple_model)
  summary(poly_model)
  
  # Visualize regression results
  ggplot(data, aes(x = Variable_category, y = Variable_name)) +
    geom_point() +
    geom_smooth(method = "lm", se = FALSE, color = "blue") +
    labs(title = "Regression Analysis", x = "Independent Variable", y = "Dependent Variable")
}
