library(dplyr)
production <- read.csv("jv_production_logs.csv")
summary(production)
Downtime_operator <- sum(is.na(production$Downtime_Minutes))
cat(Downtime_operator, "operators forgot to log in their downtime") #3
