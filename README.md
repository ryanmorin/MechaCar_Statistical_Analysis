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
All T-Tests confirm that the mean is different than the suspension coils design specifications of 1500 PSI.  For Lot1 and Lot2 that difference could be due to chance as the T-stat doesn't exceed the critical value at 95% confidence of 1.68 and the p-value is larger than 0.05. Lot3's average PSI is significantly different from the design specifications of 1500. Lot3's critical value is over 2 and it's p-value is 0.04.

![ind_lots](https://github.com/ryanmorin/MechaCar_Statistical_Analysis/blob/main/individual_lots.png)

The T-Test for all manufacturing lots is different from design specifications of 1500 PSI. While the T-test exceeds the critical value at 95% confidence the p-value is larger than 0.05.  In order to correct, it makes sense to redo lot3 or remove lot3 from the shipment.

![all_lots](https://github.com/ryanmorin/MechaCar_Statistical_Analysis/blob/main/all_lot.png)

## Study Design: MechaCar vs. Competition

Over a million people die each year in road traffic accidents <sup>[1](#myfootnote1)</sup>. In order to be appealing to consumers, MechaCar needs to focus on how it's car is safer compared to the competition.  MechaCar could compare how long it takes it's cars to stop to its competitors.

<b>Metric to Test:</b></br> Breaking distance in feet from 60 mph
<b>Null vs. alternate hypothesis:</b></br> The null hypothesis is that there is no difference between the stopping distance in feet from a car travelling at 60 mph. The alternative hypothesis is there is a difference between the stopping distance in feet from a car travelling at 60 mph.
<b>Statistical Test:</b></br> You could use a t.test to compare the average stopping distances by each car to the mean stopping distance for all the cars in the sample.
<b>Data Needed:</b></br> You would need a series of data points from each car detailing how long it took to come to a stop from 60 mph. 


<a name="myfootnote1">1</a>: https://www.who.int/news-room/fact-sheets/detail/road-traffic-injuries
