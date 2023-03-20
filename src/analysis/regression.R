# Load the "stats" package
library(stats)
library(dplyr)

# load 
merged_calender_listing <- read.csv("merged.csv")
View(merged_calender_listing)

# Perform the multiple regression analysis
lr_model <- lm(avg_price ~ dummy + room_type, data = merged_calender_listing)

# Print the summary of the regression model
summary(lr_model)
