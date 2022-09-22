# Module 15 Challenge

# Deliverable 1: Linear Regression
# Use the library function to load the dplyr package
library("dplyr")

#Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Perform linear regression using the lm() function
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar) #generate multiple linear regression model

#Using the summary function, determine the p-value and the r-squared value for the linear regression model
summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)) #generate summary statistics

#Deliverable 2: Create Visualizations
#Import and read in the Suspension_Coil.csv file as a table
Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#Write an RScript that creates total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column
total_summary <- Suspension_Coil %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), SD_PSI=sd(PSI))

#Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), SD_PSI=sd(PSI))

# Deliverable 3: T-Tests on Suspension Coils
#Write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch
t.test(Suspension_Coil$PSI,mu=1500)

#Write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot3")$PSI, mu=1500)