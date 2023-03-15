library(dplyr)
library(lubridate)

# Set the URLs for the CSV files
url1 <- "http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2022-12-05/data/calendar.csv.gz"
url2 <- "http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2022-09-07/data/calendar.csv.gz"
url3 <- "http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2022-06-05/data/calendar.csv.gz"
url4 <- "http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2022-03-08/data/calendar.csv.gz"

# Set the filenames for the CSV files
filename1 <- "calendar1.csv.gz"
filename2 <- "calendar2.csv.gz"
filename3 <- "calendar3.csv.gz"
filename4 <- "calendar4.csv.gz"

# Download the CSV files
download.file(url1, destfile = filename1)
download.file(url2, destfile = filename2)
download.file(url3, destfile = filename3)
download.file(url4, destfile = filename4)

# Read the CSV files into data frames
data1 <- read.csv(gzfile(filename1))
data2 <- read.csv(gzfile(filename2))
data3 <- read.csv(gzfile(filename3))
data4 <- read.csv(gzfile(filename4))

# Merge the data frames into a single data frame
data <- rbind(data1, data2, data3, data4)

# View the merged data frame
View(data)

# download and merge csv files Amsterdam 2022
df1 <- read.csv("http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2022-12-05/visualisations/listings.csv")
df2 <- read.csv("http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2022-09-07/visualisations/listings.csv")
df3 <- read.csv("http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2022-06-05/visualisations/listings.csv")
df4 <- read.csv("http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2022-03-08/visualisations/listings.csv")

df_a <- rbind(df1,df2)
df_b <- rbind(df3,df4)
df <- rbind(df_a, df_b)

#Remove colums: "name", "host_id", neighbourhood_group & few more
updated_df <- select(df, -name, -host_id, -host_name, -neighbourhood_group, -latitude, - longitude, -number_of_reviews, -last_review, - reviews_per_month, -calculated_host_listings_count, -availability_365, -number_of_reviews_ltm, -license, -neighbourhood, -minimum_nights)

#Only observations of year 2022 of data
data_filtered <- filter(data, year(ymd(date)) == 2022)


#remove columns: available, minimum_nights, maximum_nights, adjusted_price from data_filtered
data_filtered2 <- select(data_filtered, -available, -minimum_nights, - maximum_nights, -adjusted_price)


# joined Updated_df and data_filtered2
left_joined_data <- data_filtered2 %>%
  left_join(updated_df, by = c("listing_id"= "id"), suffix = c("_updated_df", "_data_filtered2"), multiple ="all") 


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
write.csv(grouped_df2, "grouped_df2.csv", row.names = FALSE)
grouped_df2 <- read.csv("grouped_df2.csv")
grouped_df2
