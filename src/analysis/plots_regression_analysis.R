library(dplyr)
library(ggplot2)
library(lubridate) # To group times and dates

# Load merged.csv data set
merged_calender_listing <- read.csv("merged.csv")

# Research questions - exploratory
merged_calender_listing <- merged_calender_listing %>%
  mutate(date = as.Date(date)) %>%
  mutate(month = floor_date(date, "month"))

# added an moderating effect: room_type
exploration_plot <- ggplot(merged_calender_listing, aes(x = month, y = avg_price, color = room_type)) +
  geom_line(alpha = 0.3, size = 3, shape = 18) +
  labs(x = "month", y = "avg_price") +
  scale_x_date(date_breaks = "1 month", date_labels = "%b %Y", 
               limits = c(as.Date("2022-03-08"), as.Date("2022-12-31")))

exploration_plot
