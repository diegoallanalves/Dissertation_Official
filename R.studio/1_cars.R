# Load library
# This library readys excel files
#Load the cars data
library(readxl)
cars <- read_excel("C:/Users/Diego Alves/Desktop/Git_Hub_Dissertation_final/R.studio/1_cars.xls")

cars

# Turn to data frame for helping with analyses
cars_1 <- as.data.frame(cars)

cars_1

quantile("total_cars_london", probs=0.90)

sapply(cars_1, mode)

summary(cars_2)


# Get the percentage of cars

library( dplyr )

cars_2 %>% 
  group_by( Quantity ) %>% 
  summarise( percent = 100 * n() / nrow( cars_2 ) )

