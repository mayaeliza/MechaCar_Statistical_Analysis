# MechaCar_Statistical_Analysis
## Overview
Use R to do the following:
  - Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
  - Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
  - Run t-tests to determine if the manufacturing lots are statistically different from the mean population
  - Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Resources
  - MechaCar_mpg.csv, Suspension_Coil.csv, R version 4.0.5

## Linear Regression to Predict MPG
#### Linear Regression Model
<img width="502" alt="lm" src="https://user-images.githubusercontent.com/72039212/115292742-fb76fc00-a11b-11eb-8b2d-0c3f3ae19973.png">

  ### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
    - These variables had p-values greater than the level of significance .05 and provided a non-random amount of variance to the mpg values in the dataset.
    - AWD
    - Spoiler Angle
    - Vehicle Weight
  ### Is the slope of the linear model considered to be zero? Why or why not?
    - The p-value: 5.35e-11 is less than significance level .05, the slope of the linear model is not considered to be zero. 
  ### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
    - Multiple R-squared:  0.7149
    - This means that approximately 71.5% of all mpg of MechaCar protoype predictions will be correct when using this linear model. Thus, the model is effective.
## Summary Statistics on Suspension Coils
#### Total Summary
<img width="680" alt="total summary" src="https://user-images.githubusercontent.com/72039212/115292513-b226ac80-a11b-11eb-8fb0-bcda7136bc3b.png">

#### Lot Summary
<img width="678" alt="lot summary" src="https://user-images.githubusercontent.com/72039212/115292548-bc48ab00-a11b-11eb-8e9c-0de37e363c11.png">

  ### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
  - Lot 1 and Lot 2 meet specifications and show little variance, and similar mean and median values. 
  - Lot 3 does not meet the current design specifications with a larger PSI variance, 170.29 PSI than the suspension coil variance allowed, 100 PSI.
  - All manufacturing lots in total meet specifications with a PSI variance less than the 100 PSI allowance.
## T-Tests on Suspension Coils
#### t-test across all lots
<img width="426" alt="ttest all lots" src="https://user-images.githubusercontent.com/72039212/115291413-59a2df80-a11a-11eb-864b-6dd850cfba1c.png">

#### t-test for Lot 1
<img width="530" alt="ttest lot 1" src="https://user-images.githubusercontent.com/72039212/115291443-632c4780-a11a-11eb-9513-7db670e8db6a.png">

#### t-test for Lot 2
<img width="533" alt="ttest lot 2" src="https://user-images.githubusercontent.com/72039212/115291477-6e7f7300-a11a-11eb-974d-c52680bb4a3c.png">


#### t-test for Lot 3
<img width="530" alt="ttest lot 3" src="https://user-images.githubusercontent.com/72039212/115291514-7808db00-a11a-11eb-859d-9ed25ea25228.png">

### Is the PSI for each manufacturing lot statistically different from the population mean of 1,500 pounds per square inch?
  - Lot 1 and Lot 2 have p-values greater than the .05 significance level.
    - I would fail to reject that there is a statistical difference from the population mean of 1,500 pounds per square inch.
  - Lot 3 has a p-value less than the .05 significance level.
    - I would reject that there is a statistical difference from the population mean of 1,500 pounds per square inch.

## Study Design: MechaCar vs Competition
  ### What metric or metrics are you going to test?
    - Vehicle Safety Rating
  ### What is the null hypothesis or alternative hypothesis?
    - Ho (Null Hypothesis): MechaCar's vehicle safety rating is not different from the competition's vehicle safety rating.
    - Ha (Alternative Hypothesis): MechaCar's vehicle safety rating is different from the competion's vehicle safety rating.
  ### What statistical test would you use to test the hypothesis? And why?
    - Two Sample t-test 
    - There a comparison of one independent variable, Vehicle Safety Rating. 
    - There is a dichotomous data source, MechaCar vs A Competitor
    - This two sample t-test is used to determine "Is there a statistical difference between the distribution means from two samples?"
  ### What data is needed to run the statistical test?
    - Large Sample Size taken from both MechaCar and the Competitor
    - Data including the Vehicle Safety Rating grouped by vehicle manufacturer 
