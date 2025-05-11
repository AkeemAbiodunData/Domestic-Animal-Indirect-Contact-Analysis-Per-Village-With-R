setwd("C:/Users/Admin/Desktop/Project/analysis/Statistical/Agric")

getwd()

Sankey_chart = read.csv("Data for Sankey chart.csv")

Sankey_chart


library(dplyr)
library(ggplot2)

install.packages("ggalluvial")

library(ggalluvial)


Sankey_chart <- read.csv("Data for Sankey chart.csv")



sankey_data <- Sankey_chart %>%
  select(Strata, Village, Total.contacts) %>%
  filter(!is.na(Total.contacts)) %>%
  rename(Source = Strata, Target = Village, Value = Total.contacts)

# Print the prepared data
print(sankey_data)



ggplot(sankey_data, aes(axis1 = Source, axis2 = Target, y = Value)) +
  geom_alluvium(aes(fill = Source)) +
  geom_stratum() +
  geom_text(stat = "stratum", aes(label = after_stat(stratum))) +
  theme_void() +
  labs(title = "Sankey Diagram of Contacts by Strata and Village",
       x = "Strata and Village",
       y = "Total Contacts")
