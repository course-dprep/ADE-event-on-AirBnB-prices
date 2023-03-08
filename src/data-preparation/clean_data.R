library(dplyr)
library(lubridate)

# Load df
load()

# Remove colums: "name", "host_id", neighbourhood_group & few more
updated_df <- select(df, -name, -host_id, -host_name, -neighbourhood_group, -latitude, - longitude, -number_of_reviews, -last_review, - reviews_per_month, -calculated_host_listings_count, -availability_365, -number_of_reviews_ltm, -license)


#remove duplites(partial&full)


-------------------------------------------

#load data
load()

#Only observations of year 2022
data_filtered <- filter(data, year(ymd(date)) == 2022)

#remove column " available"
data_filtered2 <- select(data_filtered, -available)

#remove duplicates(partial &full duplicates)
