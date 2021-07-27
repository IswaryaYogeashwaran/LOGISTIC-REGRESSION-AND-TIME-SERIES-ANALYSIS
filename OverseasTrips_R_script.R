rm(list=ls()) #remove all the variables previously stored

library(fpp2)
library(ggplot2)
library(tseries)
overseas_trip=read.csv("C:\\Users\\DELL\\Downloads\\statisticsdataset\\OverseasTrips.csv",header = TRUE)
overseas_trip

trips <- ts(overseas_trip$Trips.Thousands.,start = c(2012,1), end = c(2019,4) ,frequency = 4)
trips

class(trips)

plot(trips)
abline(reg=lm(trips~time(trips)))

#mean(level)
ggsubseriesplot(trips)+ylab("trips")+ggtitle("Level of the raw time series")


autoplot(trips)

start(trips)
end(trips)
frequency(trips)
#SEASONAL PLOT
ggseasonplot(trips,year.labels = TRUE,year.labels.left = TRUE) + ylab("Trips")+ ggtitle("The overseas Trips")

#smoothing time series
plot(trips,main="RAW TIME SERIES")
plot(ma(trips,3))
plot(ma(trips,5))
autoplot(trips)+autolayer(ma(trips,3))+autolayer(ma(trips,5))

seasonplot(trips)

#SEASONAL DECOMPOSITION ADDITIVE
fit.decadd<-decompose(trips,type="additive")
fit.decadd
plot(fit.decadd)

#SEASONAL DECOMPOSITION MULTIPLICATIVE
fit.decmult<-decompose(trips,type="multiplicative")
fit.decmult
plot(fit.decmult)

#SEASONAL NAIVE MODEL 
fcast.seasonalnaive<-snaive(trips,h=3)
summary(fcast.seasonalnaive)
plot(fcast.seasonalnaive)


#HOLT WINTERS SEASONAL MODEL
aust<-window(austourists,start=2012)
fit1<-hw(aust,seasonal="additive")
fit2<-hw(aust,seasonal="multiplicative")
autoplot(aust)+
  autolayer(fit1,series="HW additive forecasts", PI=FALSE)+
  autolayer(fit2,series="HW multiplicative forecasts",PI=FALSE)+
  xlab("Year")+
  ylab("Trips")+
  ggtitle("The overseas Trips")+
  guides(colour=guide_legend(title="Forecast"))





#FITTING USING ETS(HW) FUNCTION IN FORECAST
fcast.hw<-hw(trips,h=3)
summary(fcast.hw)
plot(fcast.hw)

#ETS(SOFTWARE SELECTS THE MODEL)
fitJJ<-ets(trips, model="ZZZ")
fitJJ
forecast(fitJJ,3)
round(accuracy(fitJJ),3)



