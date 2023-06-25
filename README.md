# Medicaid Research Project &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;                                                                                                 <a href="https://emrts.us" target="_blank"> ![image](https://github.com/tmwang7324/Medicaid-Analysis/assets/121271571/16e51d9d-e2f7-4e49-b407-1005281d932a) </a>
This project features a collection of scripts that filter, model, and create accurate forecasts of Medicaid enrollment and expenditure data.  These scripts implement a machine learning based forecasting tool called <a href = "https://github.com/facebook/prophet">Prophet</a> and are written with Python and R.

## Installation
To run this project, you need to have the latest releases of Python and R installed.
* stable release - Python 3.11.4
* binary release - R 4.3.0

To run the Python file, you also need to have pandas, scikit-learn, Prophet, google.colab, and matplotlib packages installed using Python.

For R, the required packages will be installed when the script is run.

To install Prophet with Python, open a terminal and type:
```properties
pip3 install Prophet
```  
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

## Usage
To run newprophet.py, you first need to download the df.csv file in the repository.  Make sure df.csv is in the same directory as newprophet.py.  Then, once you are inside that directory on command line, do
```properties
python3 newprophet.py
```

To run 'facebook prophet forcast.R', you first need to download newdata.xlsx into the same directory as 'facebook prophet forecast.R.'  Then, once you are inside that directory on command line do:
```properties
Rscript facebook\ prophet\ forcast.R
```



