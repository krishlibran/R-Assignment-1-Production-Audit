# R-Assignment-1-Production-Audit

This is the first project in R. 

Task 1: Inspect the Data. Load the CSV into R. Use the summary() function. Look closely at the Downtime_Minutes column. How many operators forgot to log their time?

Solution from Excel: 3 Operators have missed to log their time.
| Operators        | Numbers |
|------------------|---------|
| Drill_Press      | 1       |
| CNC_Lathe        | 1       |
| Milling_Machine  | 1       |

Task 2: Filter for Bottlenecks. Create a new data frame using filter() that only contains records where Downtime_Minutes is greater than 30. We only care about major stops.

Solution from Execl: The records where Downtime_Minutes is greater than 30 are as follows:
| Operators         | No. of Operators | Total Downtime (Minutes) |
|-------------------|------------------|--------------------------|
| CNC_Lathe         | 4                | 192                      |
| Drill_Press       | 3                | 152                      |
| Milling_Machine   | 4                | 200                      |
| Stamping_Press    | 3                | 161                      |
| **Total**         | **14**           | **705**                  |
