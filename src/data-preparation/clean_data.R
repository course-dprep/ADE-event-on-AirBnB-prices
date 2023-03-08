# Load merged df
load()

# Remove colums: "name", "host_id", neighbourhood_group & few more
updated_df <- select(df, -name, -host_id, -host_name, -neighbourhood_group, -latitude, - longitude, -number_of_reviews, -last_review, - reviews_per_month, -calculated_host_listings_count, -availability_365, -number_of_reviews_ltm, -license)


