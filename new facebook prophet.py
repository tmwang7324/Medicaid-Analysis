#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
df = pd.read_excel('newdata.xlsx')
df


# In[2]:


df.dtypes


# In[3]:


df['ds'] = df['ds'].str.split('__').str[0]


# In[4]:


df


# In[5]:


from pandas import read_csv
from pandas import to_datetime
from pandas import DataFrame
from prophet import Prophet
from sklearn.metrics import mean_absolute_error
from matplotlib import pyplot
import pandas as pd


# In[6]:


m = Prophet()
m.fit(df)


# In[7]:


future = m.make_future_dataframe(periods=24, freq='MS')
future.tail()


# In[8]:


forecast = m.predict(future)
forecast[['ds', 'yhat', 'yhat_lower', 'yhat_upper']].tail()


# In[9]:


from sklearn.metrics import r2_score
actual = df['y'].values
predicted = forecast['yhat'].values[:len(df)]

# Calculate R-squared
rsquared = r2_score(actual, predicted)

# Print the R-squared value
print('R-squared:', rsquared)


# In[10]:


fig1 = m.plot(forecast)


# In[11]:


fig2 = m.plot_components(forecast)


# In[12]:


import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_absolute_error
from prophet import Prophet

# Assuming you have the dataset stored in a DataFrame called 'df'

# Convert 'ds' column to datetime type
df['ds'] = pd.to_datetime(df['ds'])

# Split the data into training and test sets
train_df, test_df = train_test_split(df, test_size=0.1, random_state=100)

# Initialize and fit the Prophet model
model = Prophet()
model.fit(train_df)

# Generate predictions for the test set
forecast = model.predict(test_df)

# Extract the predicted values and actual values
y_pred = forecast['yhat']
y_actual = test_df['y']

# Calculate the mean absolute error (MAE)
mae = mean_absolute_error(y_actual, y_pred)

# Print the MAE
print("Mean Absolute Error (MAE):", mae)


# In[13]:


import matplotlib.pyplot as plt

# Assuming you have the actual values in `y_actual` and the predicted values in `y_pred`

# Create a figure and axis objects
fig, ax = plt.subplots()

# Plot actual values
ax.plot(y_actual.index, y_actual, label='Actual')

# Plot predicted values
ax.plot(y_pred.index, y_pred, label='Predicted')

# Set plot title and labels
ax.set_title('Actual vs. Predicted')
ax.set_xlabel('Date')
ax.set_ylabel('Value')

# Add legend
ax.legend()

# Display the plot
plt.show()

