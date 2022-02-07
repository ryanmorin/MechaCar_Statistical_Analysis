print(MechaCar_data)
library(dplyr) #imports the dplyr module
class(MechaCar_data) #confirms that imported as dataframe

# Multiple Linear Regression Example
fit <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle 
          + ground_clearance + AWD, data=MechaCar_data)
summary(fit) # show results

#Total summary data frame with the suspension_data
total_summary <- Suspension_data %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),Std_Dev_PSI=sd(PSI)) #create summary table with multiple columns

#Lot summary dataframe with the suspension data
lot_summary <- Suspension_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),Std_Dev_PSI=sd(PSI)) #create summary table with multiple columns
