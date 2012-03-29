---
  title: Salary
  created_at: "2012-03-22"
---

The figure below compares annual gross salary (dollars) with job position. The 
figure show the median and median absolute deviation (MAD) in salary. 
Combinations of the displayed factors with less than 10 responses have been 
excluded.

The clearest trend in this figure is that annual salary is higher in Northern 
America compared with Western Europe. This is particularly apparent for 
post-doctoral scientists in staff positions and for PIs/Managers. There does 
not however appear to be a difference in salary for PhD students with the 
exception of South America.

<%= image amzn('results/salary/with_position.png') %>

The figure below compares the variable effects for a robust linear linear model 
of salary. The model was constructed using the explanatory variables shown on 
the y-axis of the figure. A binary interaction term for region (Europe / North 
America) was also added for each variable. The log was taken of the three 
variables related to publication data (total, first, corresponding) to generate 
a more linear relationship with salary. The model was fitted using the `lmRob` 
function as part of the `robust` package. Automated stepwise variable removal 
was performed on the model using `step.lmRob` based on Robust Final Prediction 
Errors (RFPE).

The final model R squared was 0.37 indicating a large degree of unexplained 
variation. Furthermore a standard robust linear model was fitted as opposed to 
a robust generalised Poisson linear model which may be more suitable for count 
data. I was however unable to successfully fit this type of model in R. Any 
interpretation of these results should therefore take these two points into 
consideration. Suggestions for [improving the model fitting][code] are welcome.

Variables labelled "None" are those where the region specific interaction term 
was removed. These cases indicate no region specific effect between Northern 
America and Europe. The intercept term "(Intercept)" represents a female post 
doctoral scientist working in research. The remaining rows compare the relative 
region effect between Northern America and Europe for each value. A positive 
value indicates a stronger effect on salary. Care should be taken when 
comparing effects between variables since many will be in different units.

<%= image amzn('results/salary/model_effects.png') %>

[code]: https://github.com/michaelbarton/bioinformatics-survey-analysis/tree/analysis/2012/models
