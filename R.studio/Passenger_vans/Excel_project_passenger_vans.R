# Load library:

library(readxl)
library(tidyverse)
library(ggplot2)

###################################Start

# Step 1 


R_studio_project_datset <- read_excel("C:/Users/Diego Alves/Desktop/Git_Hub_Dissertation_final/R.studio_project_datset.xls")


# Turn to data frame for helping with analyses:

R_studio_project_datset <- as.data.frame(R_studio_project_datset)

R_studio_project_datset

# Get average value: predict the quantity of Kent drivers, based on population number in 2018.

mean(R_studio_project_datset$Quantity)

# Add colunms: Total_qunatity:

R_studio_project_datset$Total <- sum(R_studio_project_datset$Quantity)

R_studio_project_datset$Total

# Get the percentage from each row based on the sum total:

R_studio_project_datset$Total <- R_studio_project_datset$Quantity/R_studio_project_datset$Total*100

R_studio_project_datset$Total


###################################End









Kent_commuters <- read_excel("C:/Users/Diego Alves/Desktop/Git_Hub_Dissertation_final/R.studio/2_1_Kent_commuters.xls")
Kent_commuters

# Turn to data frame for helping with analyses:

Kent_commuters_1 <- as.data.frame(Kent_commuters)

Kent_commuters_1

# Get average value:

#mean(Kent_commuters_1$Quantity)

# Add colunms: Total_qunatity:

Kent_commuters_1$Total <- sum(Kent_commuters_1$Quantity)

Kent_commuters_1$Total

# Get the percentage from each row based on the sum total:

Kent_commuters_1$Percentage_Total <- Kent_commuters_1$Quantity/Kent_commuters_1$Total*100

Kent_commuters_1$Percentage_Total

###################################End

###################################5.0_project_data_Kent population_by_millions

project_data_Kent_population_by_millions <- read_excel("C:/Users/Diego Alves/Desktop/Git_Hub_Dissertation_final/5.0_project_data_Kent population_by_millions.xls")

project_data_Kent_population_by_millions

# Turn to data frame for helping with analyses:

project_data_Kent_population_by_millions <- as.data.frame(project_data_Kent_population_by_millions)

project_data_Kent_population_by_millions

# Get average value: predict the quantity of Kent drivers, based on population number in 2018.

mean(project_data_Kent_population_by_millions$Quantity)

###################################End