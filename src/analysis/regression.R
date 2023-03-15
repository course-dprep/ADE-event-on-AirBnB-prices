# Load the "stats" package
library(stats)

# Perform the multiple regression analysis
lr_model <- lm(avg_price ~ dummy + room_type, data = grouped_df2)

# Print the summary of the regression model
summary(lr_model)
