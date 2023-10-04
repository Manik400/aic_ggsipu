import pandas as pd
import numpy as np

# Load the dataset
df = pd.read_csv('diabetes.csv')

# Handling Missing Values: Replace 0 with NaN
cols_with_zeros = ['Glucose', 'BloodPressure', 'SkinThickness', 'Insulin', 'BMI']
df[cols_with_zeros] = df[cols_with_zeros].replace(0, np.nan)

# Impute Missing Values: Fill NaN values with mean
df.fillna(df.mean(), inplace=True)

# Feature Scaling: Standardize selected columns
cols_to_scale = ['Glucose', 'BloodPressure', 'SkinThickness', 'Insulin', 'BMI', 'DiabetesPedigreeFunction', 'Age']
df[cols_to_scale] = (df[cols_to_scale] - df[cols_to_scale].mean()) / df[cols_to_scale].std()

# Save the preprocessed data to a new CSV file
df.to_csv('preprocessed_diabetes.csv', index=False)

# Output: Display the first 5 rows of the preprocessed DataFrame
print(df.head())
