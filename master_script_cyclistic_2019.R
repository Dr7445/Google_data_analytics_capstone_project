# Install main packages and libraries
install.packages("tidyverse")

library(tidyverse)

# List the CSV files in the project folder
files <- list.files(pattern = "Divvy_Trips_2019.*\\.csv$", full.names = TRUE)

# Read and combine all CSVs into one dataframe
all_trips_2019 <- files %>%
  set_names() %>%
  map_dfr(read_csv, .id = "source")

# Preview the data (first 100 rows)
View(head(all_trips_2019, 100))
