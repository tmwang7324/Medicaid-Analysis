rm(list = ls())
# install packages and read data into r-2
library(ggplot2)
library(ggfortify)
library(readxl)
library(fpp2)
library(tidyverse)
library(prophet)
library(lubridate)
# read the Medicaid Enrollment data
df <- read.csv('/Users/jw300/Documents/df2.csv')
df$ds <- as.Date(df$ds)
df$y <- as.double(df$y)
df <- subset(df, select = -c(X))
# creates the training and test datasets
training_size <- as.integer(nrow(df) * 0.8)
testing_size <- (length(df) - training_size)
train_data <- head(df, training_size)
testing_data <- tail(df, testing_size)
time_train_data <- ts(data = train_data[,"y"], start = c(2014, 1), frequency = 12)


# uses holt's method to create a forecast of the training dataset
holt.model <- holt(train_data[,"y"],beta = 0.0651, h = 46, level = c(80), trend = "additive", seasonal = "additive", seasonal_periods = 12)
summary(holt.model)

autoplot(holt.model)
fitted_model <- fitted(holt.model)
# compares the forecast of the training data set with the test dataset.
accuracy(holt.model ,testing_data[,"y"])
accuracy(fitted_model, train_data[,"y"])
# finds the optimal beta
beta <- seq(0.001, 0.5, by = .001)
MAE <- NA
for(i in seq_along(beta)) {
  fit <- holt(train_data[,"y"], beta = beta[i], h = 30)
  MAE[i] <- accuracy(fit, testing_data[,"y"])[2,3]
}

# convert to a data frame and idenitify min alpha value
beta.fit <- data_frame(beta, MAE)
beta.min <- filter(beta.fit, MAE == min(MAE))

# plot RMSE vs. alpha
ggplot(beta.fit, aes(beta, MAE)) +
  geom_line() +
  geom_point(data = beta.min, aes(beta, MAE), size = 2, color = "blue")


p1 <- plot(time_df) +

  theme(legend.position = "bottom") +
  lines(fitted_model)

legend("topright", c("actual", "fitted_model"))
p3 <- autoplot(holt.model) + autolayer(fitted_model)
show(p3)

plot_data <- ts (testing_data[,"y"], start = c(2021, 3), frequency = 12)
p2 <- autoplot(plot_data, ts.colour = 'red', ts.linetype ="dashed") +
  autolayer(holt.model) +
  ggtitle("Predicted vs. actuals for the test data set")
show(p2)
gridExtra::grid.arrange(p1, p2, nrow = 1)
prediction <- forecast( holt.model, h = 24)
print(prediction)
autoplot(prediction)





