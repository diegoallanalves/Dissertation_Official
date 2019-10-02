# Load library
# This library readys excel files
library(readxl)

 #Load the cars data
library(readxl)
cars <- read_excel("C:/Users/Diego Alves/Desktop/Git_Hub_Dissertation_final/R.studio/1_cars.xls")

# Turn to data frame for helping with analyses
cars_1 <- as.data.frame(cars)

cars_1

cars_2 <- transform(cars_1, Quantity = as.numeric(Quantity))

sapply(cars_2, mode)
                    
summary(cars_2)

cars_2

table("Quantity")

length("Quantity")

# Get the percentage of cars

library( dplyr )

cars %>% 
  group_by( Cars_and_vehicles_2018 ) %>% 
  summarise( percent = 100 * n() / nrow( cars ) )

