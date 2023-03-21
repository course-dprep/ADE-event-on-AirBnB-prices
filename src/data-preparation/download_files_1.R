library(dplyr)
library(tidyverse)
library(lubridate)
library(readr)

#prototype = F # set to TRUE for prototyping
#n_max = 1E4
#if (prototype==F) n_max = NULL

urls = c("http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2022-12-05/data/calendar.csv.gz", "http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2022-09-07/data/calendar.csv.gz", "http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2022-06-05/data/calendar.csv.gz", "http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2022-03-08/data/calendar.csv.gz")
for (url in urls) {
  filename = paste(gsub('[^a-zA-Z]', '', url), '.csv') # keep only letter
  filename = gsub('httpdatainsideairbnbcom', '', filename) # wipe httpdatainsideairbnbcom from filename
  download.file(url, destfile = filename) # download file
}
write_csv(data, 'calendar_amsterdam.csv')

# View the merged data frame
# View(data)
urls = c("http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2022-12-05/visualisations/listings.csv","http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2022-09-07/visualisations/listings.csv","http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2022-06-05/visualisations/listings.csv", "http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2022-03-08/visualisations/listings.csv")
for (url in urls) {
  filename = paste(gsub('[^a-zA-Z]', '', url), '.csv') # keep only letter
  filename = gsub('httpdatainsideairbnbcom', '', filename) # wipe httpdatainsideairbnbcom from filename
  download.file(url, destfile = filename) # download file
}

write_csv(df, "listings_amsterdam.csv")
