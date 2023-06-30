# Medicaid Research Project &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;                                                                                                 <a href="https://emrts.us" target="_blank"> ![image](https://github.com/tmwang7324/Medicaid-Analysis/assets/121271571/16e51d9d-e2f7-4e49-b407-1005281d932a) </a>
This project features a collection of scripts that filter, model, and create accurate forecasts of Medicaid enrollment and expenditure data.  These scripts implement a machine learning based forecasting tool called <a href = "https://github.com/facebook/prophet">Prophet</a> and are written with Python and R.

## Installation
This project is implemented using the latest releases of Python and R.
* stable release - Python 3.11.4
* binary release - R 4.3.0

Ensure that you also have the pandas, scikit-learn, Prophet, statsmodels, and matplotlib packages installed using Python, and the readxl, prophet, and lubridate packages installed using R.

### Python Packages
 
To install pandas with Python, open a terminal and type:
```properties
pip3 install pandas
```
To install matplotlib with Python, open a terminal and type:
```properties
pip3 install matplotlib
```
To install scikit-learn with Python, open a terminal and type: 
```properties
pip3 install scikit-learn
```
After you complete the installation for scikit-learn, you can check the status of sklearn dependencies and your installation details by typing:
```properties
python3 -c "import sklearn; sklearn.show_versions()"
``` 
The minimum versions of sklearn dependencies are listed below along with their purposes:
![image](https://github.com/tmwang7324/Medicaid-Analysis/assets/121271571/4b7810dc-7590-483b-a7e9-c8933095cc75)

It is best to make sure you have all of these dependencies adequately updated so that you can use the full range of sklearn.  If you are missing a dependency or have a out-of-date dependency, open a terminal and type:
```properties
pip3 install [dependency_name] --upgrade
``` 

You can see all of your installed packages by typing:
```properties
pip3 freeze
```
To install Prophet with Python, open a terminal and type:
```properties
pip3 install Prophet
```
Make sure that the installed version of Prophet is the latest version: 1.1.4.  

To install statsmodels with Python, open a terminal and type:
```properties
pip3 install statsmodels
```
Make sure that the installed version of statsmodels is the latest version: 0.14.0. 

### R Packages

To install prophet with R, open your R console and type the command:
```properties
install.packages("prophet")
```

To install readxl with R, open your R console and type the command:
```properties
install.packages("readxl")
```

To install lubridate with R, open your R console and type the command:
```properties
install.packages("lubridate")
```

1.  If this is your first time installing a R package, R will ask if you want to install the package in a personal library.
2.  Hit "yes" and change the path of your personal library to any empty directory.
3.  You will then be inquired to select a CRAN mirror from a list:

![image](https://github.com/tmwang7324/Medicaid-Analysis/assets/121271571/df608f76-92b9-484b-865a-cc61f968c15e)

4.  Choose whichever mirror is closest to you.


## Usage
To run newprophet.py, ensure that you have downloaded df.csv is in the same directory as newprophet.py.  Then, go into that directory on command line and type
```properties
python3 newprophet.py
```

To run 'facebook prophet forcast.R', ensure that you have downloaded newdata.xlsx into the same directory as 'facebook prophet forecast.R.'  Then, go into that directory on command line and type:
```properties
Rscript facebook\ prophet\ forcast.R
```

To run 'exponential_smoothing (1)'.py, ensure that you have downloaded df.csv into the same directory as 'exponential_smoothing (1).py.'  Then, go into that directory on command line and type:
```properties
python3 'exponential_smoothing (1).py'
```
The second graph only shows after you close the first Actual vs. Predicted graph.



