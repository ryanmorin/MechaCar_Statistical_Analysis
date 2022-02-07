# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
Multiple regression analysis is used whenever we wish to model the relationship between one indepenent variable and more than one dependant variable. This analysis looked at the impact of 5 dependant variables (vehicle_length, vehicle_weight, spoiler_angle, ground_clearance and AWD) on MPG. The analysis demonstrated that three variables; vehicle_length, vehicle_weight and ground_clearance where statistically significant (a non-random amount of variance) at the 95% confidence interval. The impact on MPG from the other two variables (AWD and spoiler_angle) could be associated with chance.

![linear_regression](https://github.com/ryanmorin/MechaCar_Statistical_Analysis/blob/main/variable_significance.png)

The slope of the linear regression is not zero.  This is evidenced by the very high F-Stat (very small p-value). The F-stat critcal value at 44 degrees of freedom is just over 2.  The F-Stat in this example is 22, this coupled with a very small p-value (0.0000000000535) indicates that these factors contribute to explaining MPG.

![f-stat](https://github.com/ryanmorin/MechaCar_Statistical_Analysis/blob/main/fstat_r2.png)

The linear model does a good job in explaining the variance in MPG.  This is evidenced by the adjusted R squared of 0.68.  68% of the variance in the independant variable is explained by the changes in the dependant variables. Therefore there are other factors not included in the model that explain the remaining variance in MPG.

## Summary Statistics on Suspension Coils
The design specifications for MechaCar's suspension stipulates that the variance associated with suspension coils doesn't exceed 100 PSI.  The variance for Lot 1 & Lot 2 are within design specifications. Lot 3 is outside design specifications.

![Coil_psi](https://github.com/ryanmorin/MechaCar_Statistical_Analysis/blob/main/psi_variance.png)

## T-Tests on Suspension Coils

