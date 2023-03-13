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
updated_df <- select(df, -name, -host_id, -host_name, -neighbourhood_group, -latitude, - longitude, -number_of_reviews, -last_review, - reviews_per_month, -calculated_host_listings_count, -availability_365, -number_of_reviews_ltm, -license)

#Only observations of year 2022 of data
data_filtered <- filter(data, year(ymd(date)) == 2022)


#remove column " available" from data_filtered
data_filtered2 <- select(data_filtered, -available)


# joined Updated_df and data_filtered2
joined_data <- updated_df %>% 
  inner_join(data_filtered2, by = c("id"="listing_id"), suffix = c("_updated_df", "_data_filtered2"), multiple = "all")


# remove duplicated from joined_data
 deduplicated_joined_data <- distinct( joined_data)





#make dummmy for dates during ADE (=1) and not (=0)
joined-data$dummy <- ifelse(joined-data$date >= as.Date("2022-10-19") & joined-data$date <= as.Date("2022-10-23"), 1, 0)
 
