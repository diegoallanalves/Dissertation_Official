# Load library:

library(readxl) # The readxl package makes it easy to get data out of Excel

library(tidyverse) # The tidyverse is an opinionated collection of R packages designed for data science.

library(ggplot2) # The ggplot2 is a system for declaratively creating graphics

library(openxlsx) # read data from an Excel file or Workbook object into a data.frame

install.packages("openxlsx")
# Traffic Analysis

############################## Start - 6.2.1 Traffic: decrease the number of cars

# Kent_London commuters

Car_project_final_excel_final_file <- read_excel("C:/Users/Diego Alves/Desktop/Git_Hub_Dissertation_final/Car project final excel final file.xls")

Car_project_final_excel_final_file

# Turn to a data frame for helping with analyses:

Car_project_final_excel_final_file_1 <- as.data.frame(Car_project_final_excel_final_file)

Car_project_final_excel_final_file_1

# Get the total valeu, suppose the journey was included return. Alson suppose only 7 seats of the vans was used.

Car_project_final_excel_final_file_1$yes_passenger_vans <- (Car_project_final_excel_final_file_1$Quantity * 2)/ 7

Car_project_final_excel_final_file_1$yes_passenger_vans

# See the percentage of Those living in Kent and drivers to working in London with the passenger vans results.

Car_project_final_excel_final_file_1$Total <- sum(Car_project_final_excel_final_file_1$Quantity, Car_project_final_excel_final_file_1$yes_passenger_vans)

Car_project_final_excel_final_file_1$Total

Car_project_final_excel_final_file_1$PercentTotal <- Car_project_final_excel_final_file_1$Quantity/Car_project_final_excel_final_file_1$Total*100

Car_project_final_excel_final_file_1$PercentTotal

##################################################End

##################################################Start - 6.2.3 Pollution: decreasing the CO2  emission - drivers


Car_project_final_excel_final_file <- read_excel("C:/Users/Diego Alves/Desktop/Git_Hub_Dissertation_final/Car project final excel final file.xls")


Car_project_final_excel_final_file

# Turn to a data frame for helping with analyses:

Car_project_final_excel_final_file_1 <- as.data.frame(Car_project_final_excel_final_file)

Car_project_final_excel_final_file_1

# Get the total trips a day, week and month.

# Trip a Day : 2

Car_project_final_excel_final_file_1$Total_trips_a_day <- Car_project_final_excel_final_file_1$Total_distance_km * 2

Car_project_final_excel_final_file_1$Total_trips_a_day

# Trisp a Week : 5

Car_project_final_excel_final_file_1$Total_trips_a_week <-Car_project_final_excel_final_file_1$Total_trips_a_day * 5

Car_project_final_excel_final_file_1$Total_trips_a_week


# Trsps a Month : 4

Car_project_final_excel_final_file_1$Total_trips_a_month <-Car_project_final_excel_final_file_1$Total_trips_a_week * 4

Car_project_final_excel_final_file_1$Total_trips_a_month

# Now multiply: "Car_project_final_excel_final_file_1$Total_trips_a_month", by the total distance between Kent and London

Car_project_final_excel_final_file_1$Total_km_month <- Car_project_final_excel_final_file_1$Total_trips_a_month * 64

Car_project_final_excel_final_file_1$Total_km_month

# Multiply by the: GB_CO2_cars_emission_2018_Thousands_G_km for Total_km_month

Car_project_final_excel_final_file_1$route_one_CO2_emmission_CO2_emmission <- Car_project_final_excel_final_file_1$GB_CO2_cars_emission_2018_Thousands_G_km * Car_project_final_excel_final_file_1$Total_km_month

Car_project_final_excel_final_file_1$route_one_CO2_emmission_CO2_emmission

# Divide by the Quantity of cars

Car_project_final_excel_final_file_1$cars_CO2_emmission_total <- Car_project_final_excel_final_file_1$route_one_CO2_emmission / Car_project_final_excel_final_file_1$Quantity

Car_project_final_excel_final_file_1$cars_CO2_emmission_total

Car_project_final_excel_final_file_1$PercentTotal <- Car_project_final_excel_final_file_1$cars_CO2_emmission_total/Car_project_final_excel_final_file_1$Total_km_month*100

Car_project_final_excel_final_file_1$PercentTotal


#####################################################End

##################################################Start - 6.2.3 Pollution: decreasing the CO2  emission - passenger vans

# Pollution Analysis: Those living in Kent and uses passenger vans to working in London

Car_project_final_excel_final_file <- read_excel("C:/Users/Diego Alves/Desktop/Git_Hub_Dissertation_final/Car project final excel final file.xls")

Car_project_final_excel_final_file

# Turn to a data frame for helping with analyses:

Car_project_final_excel_final_file_1 <- as.data.frame(Car_project_final_excel_final_file)

Car_project_final_excel_final_file_1

# Get the total trips a day, week and month.

# Trip a Day : 2

Car_project_final_excel_final_file_1$Total_trips_a_day <- Car_project_final_excel_final_file_1$Total_distance_km * 2

Car_project_final_excel_final_file_1$Total_trips_a_day

# Trisp a Week : 5

Car_project_final_excel_final_file_1$Total_trips_a_week <-Car_project_final_excel_final_file_1$Total_trips_a_day * 5

Car_project_final_excel_final_file_1$Total_trips_a_week


# Tryps in a Month : 4

Car_project_final_excel_final_file_1$Total_trips_a_month <-Car_project_final_excel_final_file_1$Total_trips_a_week * 4

Car_project_final_excel_final_file_1$Total_trips_a_month

# Now multiply: "Car_project_final_excel_final_file_1$Total_trips_a_month", by the total distance between Kent and London

Car_project_final_excel_final_file_1$Total_km_month <- Car_project_final_excel_final_file_1$Total_trips_a_month * 64

Car_project_final_excel_final_file_1$route_one_CO2_emmission <- Car_project_final_excel_final_file_1$GB_CO2_cars_emission_2018_Thousands_G_km * Car_project_final_excel_final_file_1$Total_km_month

# Divide by the Quantity of vans

Car_project_final_excel_final_file_1$vans_CO2_emmission_total <- Car_project_final_excel_final_file_1$route_one_CO2_emmission / Car_project_final_excel_final_file_1$Quantity

Car_project_final_excel_final_file_1$vans_CO2_emmission_total

# See the percentage of Those living in Kent and drivers to working in London with the passenger vans results.

Car_project_final_excel_final_file_1$PercentTotal <- Car_project_final_excel_final_file_1$vans_CO2_emmission_total/Car_project_final_excel_final_file_1$Total_km_month*100

Car_project_final_excel_final_file_1$PercentTotal


#####################################################End








