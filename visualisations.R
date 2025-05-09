
all_trips_2019 %>%
  count(day_of_week) %>%
  ggplot(aes(x = day_of_week, y = n)) +
  geom_col(fill = "steelblue") +
  labs(title = "Number of Trips by Day of Week",
       x = "Day of Week", y = "Number of Trips") +
  theme_minimal()


# Bar chart showing subscriber and customer usage over the week
all_trips_2019 %>%
  count(usertype, day_of_week) %>%
  ggplot(aes(x = day_of_week, y = n, fill = usertype)) +
  geom_col(position = "dodge") +
  labs(title = "Trips by Day of Week and User Type",
       x = "Day of Week", y = "Number of Trips",
       fill = "User Type") +
  theme_minimal()


# Customer usage over the year
library(lubridate)
library(ggplot2)

# Prepare customer data
customer_trips_by_month <- all_trips_2019 %>%
  filter(usertype == "Customer") %>%
  mutate(month = floor_date(start_time, unit = "month")) %>%
  count(month)

# Plot the line chart
ggplot(customer_trips_by_month, aes(x = month, y = n)) +
  geom_line(color = "darkred", size = 1.2) +
  geom_point(color = "darkred", size = 2) +
  labs(title = "Customer Trips Over the Year",
       x = "Month", y = "Number of Trips") +
  theme_minimal()


# Subscriber usage over the year

# Prepare subscriber data
subscriber_trips_by_month <- all_trips_2019 %>%
  filter(usertype == "Subscriber") %>%
  mutate(month = floor_date(start_time, unit = "month")) %>%
  count(month)

# Plot
ggplot(subscriber_trips_by_month, aes(x = month, y = n)) +
  geom_line(color = "steelblue", size = 1.2) +
  geom_point(color = "steelblue", size = 2) +
  labs(title = "Subscriber Trips Over the Year",
       x = "Month", y = "Number of Trips") +
  theme_minimal()