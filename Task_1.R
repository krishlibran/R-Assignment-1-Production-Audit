library(dplyr)
production <- read.csv("jv_production_logs.csv")
summary(production)
Downtime_operator <- sum(is.na(production$Downtime_Minutes))
cat(Downtime_operator, "operators forgot to log in their downtime") #3

# Task 2: Filter for Bottlenecks. 
# Create a new data frame using filter() that only contains records 
# where Downtime_Minutes is greater than 30. 
# We only care about major stops.
major_stops <- filter(production, Downtime_Minutes > 30)
# Verify if the major stops are correct
all(major_stops$Downtime_Minutes > 30) # Returns TRUE
