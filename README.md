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

Task 3: Prioritize by Defect. Take the filtered data from Task 2 and use arrange() to sort it from highest to lowest by Defective_Parts. This tells us which broken machine is bleeding the most money.

Solution from Excel: The broken machine which is bleeding the most money is **Stamping_Press**.
| Operators         | No. of Operators | Defective Parts |
|-------------------|------------------|-----------------|
| CNC_Lathe         | 4                | 41              |
| Drill_Press       | 3                | 35              |
| Milling_Machine   | 4                | 34              |
| Stamping_Press    | 3                | 54              |
| **Total**         | **14**           | **164**         |

Task 4: Group & Summarize. Go back to your original dataset. Use group_by() and summarize() to calculate the Total Parts Produced, Average Downtime, and Total Defective Parts for each Machine_Type.

Solution from Excel: 
| Operators         | Sum of Parts Produced | Sum of Defective Parts | Average Downtime (Minutes) |
|-------------------|----------------------:|-----------------------:|---------------------------:|
| CNC_Lathe         | 3239                  | 165                    | 18.88                      |
| Drill_Press       | 2061                  | 90                     | 27.56                      |
| Milling_Machine   | 2851                  | 122                    | 23.07                      |
| Stamping_Press    | 5320                  | 216                    | 25.08                      |

Task 5: Visualize. Use ggplot2 to create a Bar Chart showing the total defective parts by machine type. Look closely at the categories on the bottom of your chart—did you catch the typing mistake the operators made?

Solution from Excel: 

<img width="481" height="289" alt="image" src="https://github.com/user-attachments/assets/28929e93-7f81-4556-83a0-f8554291a387" />


