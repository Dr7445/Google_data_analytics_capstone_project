# Get the mode of birthyear (ignoring NA)
mode_birthyear <- all_trips_2019_clean %>%
  filter(!is.na(birthyear)) %>%
  count(birthyear, sort = TRUE) %>%
  slice(1) %>%
  pull(birthyear)

mode_birthyear #1992

# Replace missing birthyear values with the mode birthyear

all_trips_2019_clean <- all_trips_2019_clean %>%
  mutate(birthyear = if_else(is.na(birthyear), mode_birthyear, birthyear))






# Create mean age column
all_trips_2019_clean <- all_trips_2019_clean %>%
  mutate(age = 2019 - as.numeric(birthyear))

# Determine the mean age of customers
mean_age <- mean(all_trips_2019_clean$age, na.rm = TRUE)
round(mean_age)
