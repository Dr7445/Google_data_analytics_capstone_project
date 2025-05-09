# Column names overveiw
colnames(all_trips_2019)



# Remove all unecessary columns
all_trips_2019$bikeid <- NULL
all_trips_2019$from_station_id <- NULL
all_trips_2019$to_station_id <- NULL


# Transform format of tripduration to mins and seconds from just seconds
all_trips_2019 <- all_trips_2019 %>%
  mutate(
    trip_duration_fmt = paste0(
      floor(tripduration / 60), "m",
      str_pad(tripduration %% 60, 2, pad = "0"), "s"
    )
  )



#Replace all missing values in gender with "unspecified"
all_trips_2019 <- all_trips_2019 %>%
  mutate(gender = if_else(is.na(gender) | gender == "", "Unspecified", gender))

# Remove birth year column now  current stage at last log out