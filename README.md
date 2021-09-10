# LOGISTIC REGRESSION AND TIME SERIES ANALYSIS STATISTICS

This project is to evaluate and analyze the time series and logistic regression. The time series analysis has estimatedby using two datasets for getting best fit model 
among the three different appropriately used models. The logistic regression is performed in the dataset given to estimate the most significant predictor variable and independent variables by using relevant dimensional reduction methodology. The reasons for selectingbest fit models are explained clearly.

## TIME SERIES ANALYSIS
A time series data set is a range of multiple values that an attribute fluctuates over time. Time series analysis is the method for dealing with time series data and evaluating the insights. This method utilizes seasonality, trend, and patterns of time series data, which aids in forecasting future events. 
 ![N|Solid](https://miro.medium.com/max/1280/0*AN8suioCkeRkugES.gif)
 
 DATA DICTIONARY: The dataset used in this time series analysis are “The overseas trips” and “The new home registration”. “The overseas trips” prediction will be
forecasted by the overseas trips by the non-residents to Ireland from the period of 2012 of quarter 1 to 2019 of quarter 4. “The overseastrips” is a quarterly time-period dataset. This dataset consists of two columns such as “year” 
and “Trips.Thousands”, which has 32 observations. “The new home registration” prediction will be forecasted by the registration from the year 1978 tothe year 2019. “The new home registration” is an annual time-period dataset. This dataset contains only two columns namely“i.year” and “new home registration”, that has 42 rows.

COMPONENTS OF RAW TIME SERIES
The components of a raw time series are the numerous rationale that affect the values of an assessment in a time series. The components are of four types:   
1. Trend 
2. Seasonal Changes 
3. Cyclic Changes                                              
4. Unpredictable or irregular movement 

Seasonal and cyclical variations are changes that occur on a regular basis or are short-term changes. This is observed that this time series values have trend and seasonality. The Linear trend is present in this time series, which is justified by plotting abline function, which is seen in the figure-3. The abline function is plotting mean to the data.The seasonality is checkedby using seasonal plot which is visualized by the help of ggplot package in the figure-4. The level of the time series is given in the figure-5. The lines represent the mean of each quarter period. In the figure-6,the autoplot is a function that provides better default graphics for various data objects.

![N|Solid](https://github.com/IswaryaYogeashwaran/LOGISTIC-REGRESSION-AND-TIME-SERIES-ANALYSIS/blob/main/statsPicture2.png?raw=true)

![N|Solid](https://github.com/IswaryaYogeashwaran/LOGISTIC-REGRESSION-AND-TIME-SERIES-ANALYSIS/blob/main/StatsPicture1.png?raw=true)
 
 In this time series, the four models used to evaluate are seasonal naive, Holt winters seasonal method, ETS function model and Arima model. The plot for seasonal naive. Box-Luang test is used to check the auto correlation of residuals or white noise present in the data. It gives significantly the model does not have lack of fit.
 
 ![N|Solid](https://github.com/IswaryaYogeashwaran/LOGISTIC-REGRESSION-AND-TIME-SERIES-ANALYSIS/blob/main/StatsPicture3.png?raw=true)

## LOGISTIC REGRESSION
The statistical methodology of logistic regression is used to predict the result of the response variable (binary variable).For logistic regression, the independent variables can be continuous or categorical, but the response variable must be
dichotomous or nominal or ordinal. 
![N|Solid](https://miro.medium.com/max/986/1*rmXSVr7NopG_hFH0XZsEPA.png)



ANALYSIS PROCEDURE:
 Import the Data in SPSS.
Navigate to Analyze¡- Regression ¡- Binary
LogisticRegression.
 Drag and drop the variable “low birth weight” in 
targetvariable box.
 Drag and drop the other relevant variables in the
independent variable box.
 Click KMO and Bartlett’s test in Descriptive
statisticsoption.
 Click Fixed 2 in the extraction option

Hosmer and Lemeshow Test showed chi-square value of 0.5446, which means the predictor variable is significant. From the above results, the model for predicting the lower birth weight of the child has proved to be classified as 88.1%.

The logistic regression for predicting the low birth weight of the child has proved that the model is fitted with accuracy 88.1%. The predictor variable is significant variable to predict. In the time series, “Overseas Trips” dataset has the best fit model as ETS function of Simple Exponential Smoothing with RMSE value of 54. In “new home registration” dataset, Arima model is the best fitted model with high accuracy (RMSE value of 6342.208). This concludes that these two models forecasted the next three periods efficiently.





























   
   
