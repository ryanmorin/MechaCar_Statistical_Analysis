
library(dplyr) #imports the dplyr module

#put data into dataframe
MechaCar_data <- read.csv(file='MechaCar_mpg.csv')
Suspension_data <- read.csv(file='Suspension_Coil.csv')

print(MechaCar_data)

class(MechaCar_data) #confirms that imported as dataframe

# Multiple Linear Regression Example
fit <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle 
          + ground_clearance + AWD, data=MechaCar_data)
summary(fit) # show results

#Total summary data frame with the suspension_data
total_summary <- Suspension_data %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),Std_Dev_PSI=sd(PSI)) #create summary table with multiple columns

#Lot summary dataframe with the suspension data
lot_summary <- Suspension_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),Std_Dev_PSI=sd(PSI)) #create summary table with multiple columns

lot1 <- subset(Suspension_data, Manufacturing_Lot == "Lot1", select=c(PSI))
lot2 <- subset(Suspension_data, Manufacturing_Lot == "Lot2", select=c(PSI))
lot3 <- subset(Suspension_data, Manufacturing_Lot == "Lot3", select=c(PSI))

t.test(lot1, mu=1500)
t.test(lot2, mu=1500)
t.test(lot3, mu=1500)

all_lot <- subset(Suspension_data, select=c(PSI))

t.test(all_lot, mu=1500)
