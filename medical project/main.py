import requests
import json

# Prompt the user to enter details
print("Enter the following information:")
pregnancies = float(input("Pregnancies (Number of times pregnant): "))
glucose = float(input("Glucose (Plasma glucose concentration a 2 hours in an oral glucose tolerance test): "))
blood_pressure = float(input("Blood Pressure (Diastolic blood pressure mm Hg): "))
skin_thickness = float(input("Skin Thickness (Triceps skin fold thickness mm): "))
insulin = float(input("Insulin (2-Hour serum insulin mu U/ml): "))
bmi = float(input("BMI (Body mass Index weight in kg/height in m^2): "))
diabetes_pedigree = float(input("Diabetes Pedigree Function: "))
age = float(input("Age (years): "))

# Create a JSON request payload
user_data = {
    "Pregnancies": pregnancies,
    "Glucose": glucose,
    "BloodPressure": blood_pressure,
    "SkinThickness": skin_thickness,
    "Insulin": insulin,
    "BMI": bmi,
    "DiabetesPedigreeFunction": diabetes_pedigree,
    "Age": age
}

# Define the API endpoint
api_url = "http://localhost:8080/predict"  # Adjust the URL if needed

# Send a POST request to the API
response = requests.post(api_url, json=user_data)

# Check the response and print the prediction
if response.status_code == 200:
    result = json.loads(response.text)
    print("Prediction:", result['prediction'])

    # Modify the following lines to get and display accuracy
    accuracy = result.get('accuracy')
    if accuracy is not None:
        print("Accuracy:", accuracy)
    else:
        print("Accuracy not available in the response.")
else:
    print("Error:", response.text)
