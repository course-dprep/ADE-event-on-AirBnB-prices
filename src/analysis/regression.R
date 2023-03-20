# Load the "stats" package
library(stats)

# load 
grouped_df2 <- read.csv("grouped_df2.csv")
View(grouped_df2)

# Perform the multiple regression analysis
lr_model <- lm(avg_price ~ dummy + room_type, data = grouped_df2)
summary(lr_model)

# Print the summary of the regression model
summary(lr_model) 
