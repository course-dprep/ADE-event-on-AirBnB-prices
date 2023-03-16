library(dplyr)
library(lubridate)
library(tidyverse)


# Load input data
listings <- read_csv('listings_amsterdam.csv')
calendar <- read_csv('calendar_amsterdam.csv')

#Remove colums: "name", "host_id", neighbourhood_group & few more
updated_listings <- select(listings, -name, -host_id, -host_name, -neighbourhood_group, -latitude, - longitude, -number_of_reviews, -last_review, - reviews_per_month, -calculated_host_listings_count, -availability_365, -number_of_reviews_ltm, -license, -neighbourhood, -minimum_nights)

#Only observations of year 2022 of data
calendar_filtered <- filter(calendar, year(ymd(date)) == 2022)


#remove columns: available, minimum_nights, maximum_nights, adjusted_price from data_filtered
data_filtered2 <- select(calendar_filtered, -available, -minimum_nights, - maximum_nights, -adjusted_price)


# joined Updated_df and data_filtered2
left_joined_data <- data_filtered2 %>%
  left_join(updated_listings, by = c("listing_id"= "id"), suffix = c("_updated_df", "_data_filtered2"), multiple ="all") 


# average price for each day for each accomodation type
grouped_df2 <- left_joined_data %>%
  group_by(date, room_type) %>%
  summarize(
    avg_price = mean(price_data_filtered2, na.rm = TRUE) # average price for each group
  ) %>%
  arrange(date)

# Check for duplicates in grouped_df2
duplicates <- duplicated(grouped_df2)

# Print the duplicated rows, if any
if (any(duplicates)) {
  print(grouped_df2[duplicates, ])
} else {
  print("No duplicates found.")
}


#make dummmy for dates during ADE (=1) and not (=0)
grouped_df2$dummy <- ifelse(grouped_df2$date >= as.Date("2022-10-19") & grouped_df2$date <= as.Date("2022-10-23"), 1, 0)

#print
print(grouped_df2)
head(grouped_df2)

#output
write_csv(grouped_df2, "merged.csv")


