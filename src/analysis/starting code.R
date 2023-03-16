install.packages("readr")
library("readr")

download.file("https://github.com/course-dprep/team-assignment-team3/blob/master/src/data-preparation/Joined%26Cleaned_data.R", destfile = "grouped_df2.csv")
grouped_df2 <- read.csv("grouped_df2.csv")
