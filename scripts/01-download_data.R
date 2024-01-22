# Import opendatatoronto package
library(opendatatoronto)

ttc_packages <- search_packages("ttc")
subway_delay_data <- list_package_resources("996cfe8d-fb35-40ce-b569-698d51fc683b") |> 
  filter(name == "ttc-subway-delay-data-2023") |>
  get_resource()
write_csv(
  x=subway_delay_data,
  file="./inputs/data/subway_delay_data_2023.csv"
)
clean_subway_delay_data <- subway_delay_data %>%
  filter(!is.na(Line))

