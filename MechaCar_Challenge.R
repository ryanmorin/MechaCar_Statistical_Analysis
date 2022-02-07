print(MechaCar_data)
library(dplyr) #imports the dplyr module
class(MechaCar_data) #confirms that imported as dataframe

# Multiple Linear Regression Example
fit <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle 
          + ground_clearance + AWD, data=MechaCar_data)
summary(fit) # show results
