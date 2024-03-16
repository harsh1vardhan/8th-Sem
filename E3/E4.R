# Load the necessary library
library(readr)

# Read the CSV file into a dataset
dataset <- read.csv("D:/8 sem/R lab/Financial.csv")

# Display the structure and first few rows of the dataset
str(dataset)
head(dataset)

# Summarize basic statistics for numerical variables
summary(dataset)

# Subset the data based on a condition
# For instance, let's assume you want to subset based on a condition where Data_value > 50
# You need to uncomment and adjust this line based on your actual condition
# subset_data <- dataset[dataset$Data_value > 50, ]

# Create a new variable or column
# For instance, if you want to create a new variable which is twice the value of an existing variable
# dataset$new_variable <- dataset$old_variable * 2

# Filter the data based on specific criteria
# For instance, if you want to filter based on a particular value in a column named 'Value'
# filtered_data <- subset(dataset, Value == "Value")

# Calculate mean, median, and standard deviation for a numeric column
# For instance, if you want to calculate these statistics for a column named 'new'
mean_value <- mean(dataset$new)
median_value <- median(dataset$new)
sd_value <- sd(dataset$new)

# Tabulate frequencies for categorical variables
# For instance, if you have a categorical variable named 'old'
table(dataset$old)

# Create a histogram for a numeric variable
# For instance, if you want to create a histogram for the column named 'new'
hist(dataset$new, main = "Distribution of Numeric Column", xlab = "X Label")

# Create a bar plot for a categorical variable
# For instance, if you want to create a bar plot for the frequency of categories in the column 'old'
barplot(table(dataset$old), main = "Frequency of Categories")
