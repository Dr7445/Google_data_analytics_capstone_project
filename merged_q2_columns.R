q2_raw <- read_csv("Divvy_Trips_2019_Q2.csv")
colnames(q2_raw)


q2_clean <- q2_raw %>%
  rename(
    trip_id = `01 - Rental Details Rental ID`,
    start_time = `01 - Rental Details Local Start Time`,
    end_time = `01 - Rental Details Local End Time`,
    bikeid = `01 - Rental Details Bike ID`,
    tripduration = `01 - Rental Details Duration In Seconds Uncapped`,
    from_station_id = `03 - Rental Start Station ID`,
    from_station_name = `03 - Rental Start Station Name`,
    to_station_id = `02 - Rental End Station ID`,
    to_station_name = `02 - Rental End Station Name`,
    usertype = `User Type`,
    gender = `Member Gender`,
    birthyear = `05 - Member Details Member Birthday Year`
  ) %>%
  mutate(quarter = "Q2")



colnames(q2_raw)
