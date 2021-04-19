# DELIVERABLE 1
# Load dplyr
library(dplyr)

# Read in MehcaCar mpg csv as DataFrame
mechacar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
View(mechacar_mpg)

# Create linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=mechacar_mpg)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=mechacar_mpg))

# DELIVERABLE 2
# Import Suspension Coil csv
suspensioncoil <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) 
head(suspensioncoil)
# Get the summary info of the Suspension Coil csv
total_summary <- suspensioncoil %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), SD_PSI=sd(PSI))

# Create lot summary using group_by function
lot_summary <- suspensioncoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), SD_PSI=sd(PSI))

# DELIVERABLE 3
# t test across all lots
t.test(suspensioncoil$PSI,mu = 1500)
# t test lot 1
t.test(subset(suspensioncoil,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
# t test lot 2
t.test(subset(suspensioncoil,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
# t test lot 3
t.test(subset(suspensioncoil,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)