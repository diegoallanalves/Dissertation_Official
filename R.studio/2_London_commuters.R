# Load library
library(readxl)
library(tidyverse)
library(ggplot2)

London_commuters <- read_excel("C:/Users/Diego Alves/Desktop/Git_Hub_Dissertation_final/R.studio/2_2_London_commuters.xls")

London_commuters

# Turn to data frame for helping with analyses
London_commuters_1 <- as.data.frame(London_commuters)

London_commuters_1

mean(London_commuters_1$Quantity)

# Add colunms: Total_qunatity

Kent_commuters_1$Total <- sum(Kent_commuters_1$Quantity)

Kent_commuters_1$Total

# Get the percentage from each row based on the sum total

Kent_commuters_1$Percentage_Total <- Kent_commuters_1$Quantity/Kent_commuters_1$Total*100

Kent_commuters_1$Percentage_Total