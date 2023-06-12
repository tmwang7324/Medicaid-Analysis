rm(list = ls())
# install packages and read data into r
install.packages("readxl")
library(readxl)
df <- read_excel('newdata.xlsx')
print(df)
df$ds <- sub("__Total Monthly Medicaid/CHIP Enrollment", "", df$ds)
df
# install packages
install.packages('prophet')
library(prophet)
install.packages("lubridate")
library(lubridate)
#run model forcast
names(df) <- c("ds", "y")
df$ds <- as.Date(paste("01", df$ds, sep = " "), format = "%d %b %Y")
model <- prophet(df)
future <- make_future_dataframe(model, periods = 365 * 3)  # Forecast for three years
forecast <- predict(model, future)
plot(model, forecast)



