# MechaCar_Statistical_Analysis

AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ management has called on the data analytics team to review the production data for insights that may help the manufacturing team.

## Linear Regression to Predict MPG

The data analytics team first performs linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
 - Based on the results, vehicle_length and ground_clearance are statistically significant with p-values of 2.60e-12*** and 5.21e-08*** respectively. The vehicle_weight, spoiler_angle, and all wheel drive(AWD) variables indicate a random amount of variance.
 - The slope of the linear model is not zero; the p-value of our linear regression analysis is 5.35e-11, which is much smaller than our assumed significance level of 0.05%.
 - From the linear regression model, the r-squared value is 0.71, which means that roughly 71% of the variability of our dependent variable (mpg) is explained using this linear model.

![](https://github.com/AB3478/MechaCar_Statistical_Analysis/blob/d69d95d415f93a8465979bd1c0d4baf84809428f/Resources/Linear_Regression.png)

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The total_summary results indicate the variance of suspension coils is 62.29, well below the 100 pounds per square inch limit. A closer look at the lot_summary results reveals that Lot3 is the only lot that exceeds the limit with a variance of 170.28.

#### Total Summary
![](https://github.com/AB3478/MechaCar_Statistical_Analysis/blob/c266299225209c3932b4d91c2b2f353e66f571a6/Resources/Total_Summary.png)

#### Lot Summary
![](https://github.com/AB3478/MechaCar_Statistical_Analysis/blob/c266299225209c3932b4d91c2b2f353e66f571a6/Resources/Lot_Summary.png)

## T-Tests on Suspension Coils
The p-value for all lots is 0.06, which falls outside of the 0.05 significance level. There is not sufficient evidence to reject the  null hypothesis.

#### Summary T-Test
![](https://github.com/AB3478/MechaCar_Statistical_Analysis/blob/29fb04e7f2593bc53f18c6efa4412c3b1fb80856/Resources/t_test.png)

#### T-Test for Lot 1-3
![](https://github.com/AB3478/MechaCar_Statistical_Analysis/blob/29fb04e7f2593bc53f18c6efa4412c3b1fb80856/Resources/Lot_t_test.png)

## Study Design: MechaCar vs Competition
With rising inflation and the high cost of gas prices, one test that consumers will likely be interested in is the highway and city fuel efficiency of MechaCar and its competitors. This key question can be answered through the following hypothesis test:
-	H0 : MechaCar is more fuel efficient than competitors
-	Ha : MechaCar is not as fuel efficient as its competitors

We will need data on city and highway miles per gallon by manufacturer to determine the most fuel-efficient vehicle. To test this hypothesis, The analysis of variance (ANOVA) test would be appropriate, which is used to determine the means of a single dependent variable across a single independent variable with multiple groups.

