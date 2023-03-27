library(dplyr)
library(tidyverse)
library(lubridate)
library(readr)

prototype = TRUE # set to TRUE for prototyping
n_max = 1E4
if (prototype==F) n_max = NULL

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
data1 <- read_csv(gzfile(filename1), n_max=n_max)
data2 <- read_csv(gzfile(filename2), n_max=n_max)
data3 <- read_csv(gzfile(filename3), n_max=n_max)
data4 <- read_csv(gzfile(filename4), n_max=n_max)

# Merge the data frames into a single data frame
data <- bind_rows(data1, data2, data3, data4)
write_csv(data, 'calendar_amsterdam.csv')

# View the merged data frame
# View(data)
print('Downloading next set')
# download and merge csv files Amsterdam 2022
df1 <- read_csv("http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2022-12-05/visualisations/listings.csv", n_max=n_max)
df2 <- read_csv("http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2022-09-07/visualisations/listings.csv", n_max=n_max)
df3 <- read_csv("http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2022-06-05/visualisations/listings.csv", n_max=n_max)
df4 <- read_csv("http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2022-03-08/visualisations/listings.csv", n_max=n_max)

df <- bind_rows(df1,df2,df3,df4)

write_csv(df, "listings_amsterdam.csv")
