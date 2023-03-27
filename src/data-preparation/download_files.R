library(dplyr)
library(tidyverse)
library(lubridate)
library(readr)


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
data1 <- read_csv(gzfile(filename1))
data2 <- read_csv(gzfile(filename2))
data3 <- read_csv(gzfile(filename3))
data4 <- read_csv(gzfile(filename4))

# Merge the data frames into a single data frame
data <- bind_rows(data1, data2, data3, data4)
write_csv(data, 'calendar_amsterdam.csv')

# View the merged data frame
# View(data)
print('Downloading next set')
# download and merge csv files Amsterdam 2022
df1 <- read_csv("http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2022-12-05/visualisations/listings.csv")
df2 <- read_csv("http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2022-09-07/visualisations/listings.csv")
df3 <- read_csv("http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2022-06-05/visualisations/listings.csv")
df4 <- read_csv("http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2022-03-08/visualisations/listings.csv")

df <- bind_rows(df1,df2,df3,df4)

write_csv(df, "listings_amsterdam.csv")
