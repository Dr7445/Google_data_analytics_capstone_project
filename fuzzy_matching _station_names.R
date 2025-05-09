

unique(all_trips_2019$from_station_name)


all_trips_2019 %>%
  count(from_station_name, sort = TRUE)


canonical_names <- grouped_names %>%
  left_join(all_trips_2019 %>%
              count(from_station_name) %>%
              rename(name = from_station_name,
                     freq = n),
            by = "name") %>%
  group_by(group) %>%
  mutate(canonical = name[which.max(freq)]) %>%
  ungroup()


all_trips_2019_clean <- all_trips_2019 %>%
  left_join(canonical_names, by = c("from_station_name" = "name")) %>%
  mutate(from_station_name = coalesce(canonical, from_station_name)) %>%
  select(-group, -canonical, -freq)


View(canonical_names)
