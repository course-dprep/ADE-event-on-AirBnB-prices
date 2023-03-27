# Load the "stats" package
install.packages("lmtest")
library(lmtest)
library(stats)
library(dplyr)
library(ggplot2)
library(car)

# load 
merged_calender_listing <- read.csv("merged.csv")

View(merged_calender_listing)


# Perform the multiple regression analysis
lr_model <- lm(avg_price ~ dummy + room_type, data = merged_calender_listing)

# Print the summary of the regression model
lr_model_summary <- summary(lr_model)

# Checking assumptions

## Multicollinearity
vif_values <- vif(lr_model)

barplot(vif_values, main = "VIF Values", horiz = TRUE, col = "steelblue", # Barplot for Vif values
        names.arg = names(coef(lr_model)[-1]))

cor_matrix <- merged_calender_listing[ , c("avg_price", "dummy")] # correlation matrix

cor(cor_matrix)

## Homoscedasticity
bptest(lr_model) # Breach-Pagan test

plot(lr_model, which = 1) # residual plot

