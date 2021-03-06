# -*- coding: utf-8 -*-
"""aip2_assign1_20202026.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1X8UmAFy46UgFLtpxkXBmvKqCa9IPabDN
"""

# Commented out IPython magic to ensure Python compatibility.
import pandas as pd
import matplotlib
import matplotlib.pyplot as plt 
# %matplotlib inline

housing = pd.read_csv('housing.csv') 
housing.head(10)

type(housing)

def plot_histogram(df, col):
  bins = 50
  col_list = list(housing)
  col_list.remove('ocean_proximity')
  print("column: " + col)
  plt.hist(housing[col], bins=bins)
  plt.title("Histogram of " + col)
  plt.xlabel(col)
  plt.ylabel("frequency")
  plt.show()

plot_histogram(housing, "longitude")
plot_histogram(housing, "latitude")
plot_histogram(housing, "housing_median_age")
plot_histogram(housing, "total_rooms")
#plot_histogram(housing, "total_bedrooms")
plot_histogram(housing, "population")
plot_histogram(housing, "median_income")
plot_histogram(housing, "median_house_value")

plt.rcParams['axes.labelsize'] = 14
plt.rcParams['xtick.labelsize'] = 12
plt.rcParams['ytick.labelsize'] = 12

housing.plot(kind='scatter', x='longitude', y='latitude', alpha=0.4, 
             s=housing['population']/50, label='population', figsize=(10,7),
             c='median_house_value', cmap=plt.get_cmap('jet'), colorbar=True,
             sharex=False)

from pandas.plotting import scatter_matrix
attribute = ['median_house_value', 'median_income', 'total_rooms', 'housing_median_age']
scatter_matrix(housing[attribute], figsize=(12, 8))

housing.plot(kind='scatter', x='median_income', y='median_house_value', alpha=0.1)

housing.info()

corr_matrix = housing.corr()
corr_matrix['median_house_value'].sort_values(ascending=False)

median = housing['total_bedrooms'].median()
housing['total_bedrooms'] = housing['total_bedrooms'].fillna(median)
housing.info()

housing['rooms_per_household'] = housing['total_rooms'] / housing['households']
housing['bedrooms_per_household'] = housing['total_bedrooms'] / housing['households']
del housing['total_rooms'], housing['total_bedrooms']

housing.info()

from sklearn.preprocessing import StandardScaler

scaler = StandardScaler()

col_list = list(housing)
col_list.remove('ocean_proximity')
col_list.remove('median_house_value')

housing_numeric = housing[col_list]
housing_scaled = scaler.fit_transform(housing_numeric)

housing_scaled_df = pd.DataFrame(housing_scaled, index=housing_numeric.index, columns=housing_numeric.columns)

housing = pd.concat([housing_scaled_df, housing['median_house_value'], housing['ocean_proximity']], axis=1)
housing.head()

housing = pd.get_dummies(housing)
housing.tail(10)

from sklearn.model_selection import train_test_split

train_set, test_set = train_test_split(housing, test_size=0.2, random_state=42)
print("# of train set: %.0f. # of test set: %.0f" % (train_set.shape[0], test_set.shape[0]))

train_set_features = train_set.drop('median_house_value', axis=1)
train_set_target = train_set['median_house_value'].copy()