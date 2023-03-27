library(dplyr)
library(ggplot2)
library(lubridate) # To group times and dates

# Load merged.csv data set
merged_calender_listing <- read.csv("merged.csv")

# Plot for research question 1

# First we need to convert the dates, so we can use it to view the monthly dates in the plot
merged_calender_listing <- merged_calender_listing %>%
  mutate(date = as.Date(date)) %>%
  mutate(month = floor_date(date, "month"))

# Then we can make the plot with only months (otherwise there would be to much dates)
ggplot(merged_calender_listing, aes(x = month, y = avg_price)) +
  geom_point(alpha = 0.3, size = 3, shape = 18, color = "blue") +
  labs(x = "month", y = "avg_price") +
  theme_gray() +
  scale_x_date(date_breaks = "1 month", date_labels = "%b %Y", 
               limits = c(as.Date("2022-03-08"), as.Date("2022-12-31")))

# Research question 2
merged_calender_listing <- merged_calender_listing %>%
  mutate(date = as.Date(date)) %>%
  mutate(month = floor_date(date, "month"))

# added an moderating effect: room_type
ggplot(merged_calender_listing, aes(x = month, y = avg_price, color = room_type)) +
  geom_point(alpha = 0.3, size = 3, shape = 18) +
  labs(x = "month", y = "avg_price") +
  scale_x_date(date_breaks = "1 month", date_labels = "%b %Y", 
               limits = c(as.Date("2022-03-08"), as.Date("2022-12-31")))

# test: line plot
ggplot(merged_calender_listing, aes(x = date, y = avg_price)) +
  geom_line() +
  labs(x = "date", y = "avg_price")



