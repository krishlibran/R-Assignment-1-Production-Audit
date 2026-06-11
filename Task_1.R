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

# Task 3: Prioritize by Defect. Take the filtered data from Task 2 
# and use arrange() to sort it from highest to lowest by Defective_Parts. 
# This tells us which broken machine is bleeding the most money.
major_stops$Machine_Type = gsub("cnc_lathe", "CNC_Lathe", major_stops$Machine_Type) # Correction of typing error that is replacing "cnc_lathe to CNC_Lathe in the data frame.
head(arrange(major_stops[, c("Machine_Type", "Defective_Parts")], desc(Defective_Parts)), 5) # Selecting the top 5 rows after arranging the Defective_Parts column in Descending order
arrange(summarise(group_by(major_stops, Machine_Type), Total_Defective_Parts = sum(Defective_Parts), Number_of_Operators = n()), desc(Total_Defective_Parts)) # Categorising the Machine_Type column and getting the Total_Defective_Parts of each Machine_Type

# Task 4: Group & Summarize. Go back to your original dataset. 
# Use group_by() and summarize() to calculate the Total Parts Produced, 
# Average Downtime, and Total Defective Parts for each Machine_Type.
production$Machine_Type = gsub("cnc_lathe", "CNC_Lathe", production$Machine_Type)
totals = summarise(group_by(production, Machine_Type), Total_Parts_Produced = sum(Parts_Produced) , Avg_Downtime = mean(Downtime_Minutes, na.rm = TRUE), Total_Defective_Parts = sum(Defective_Parts), Number_of_Operators = n())
print(totals)

# Task 5: Visualize. Use ggplot2 to create a Bar Chart showing the 
# total defective parts by machine type. Look closely at the categories 
# on the bottom of your chart—did you catch the typing mistake the 
# operators made?
ggplot(totals, aes(x = Machine_Type, y = Total_Defective_Parts)) + geom_col(fill = "steelblue") + labs(title = "Total Defective parts by Machine Type")
