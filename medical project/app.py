import pandas as pd
from flask import Flask, request, jsonify
import joblib
from flask_cors import CORS
from sklearn.metrics import accuracy_score  # Import accuracy_score

# Load the pre-trained XGBoost model here
model = joblib.load('xgboost_model.pkl')

app = Flask(__name__)
CORS(app)

@app.route('/')
def home():
    return "Welcome to the Diabetes Prediction API!"

@app.route('/predict', methods=['POST'])
def predict():
    try:
        # Get user input as JSON
        user_data = request.get_json()

        # Ensure the JSON contains the expected features
        expected_features = ['Pregnancies', 'Glucose', 'BloodPressure', 'SkinThickness', 'Insulin', 'BMI',
                             'DiabetesPedigreeFunction', 'Age']
        for feature in expected_features:
            if feature not in user_data:
                return jsonify({'error': f'Missing feature: {feature}'}), 400

        # Create a DataFrame from user input
        user_data_df = pd.DataFrame([user_data])

        # Predict using your model (which is now loaded)
        prediction = model.predict(user_data_df)

        # Calculate accuracy on the test data (assuming you have test data available)
        # Load test data and split into features (X_test) and target (y_test)
        test_data = pd.read_csv('preprocessed_diabetes.csv')  # Load test data
        X_test = test_data.drop('Outcome', axis=1)
        y_test = test_data['Outcome']

        # Make predictions on the test data
        y_pred = model.predict(X_test)

        # Calculate accuracy
        accuracy = accuracy_score(y_test, y_pred)

        # Return the prediction and accuracy as JSON
        if prediction[0] == 1:
            result = "You may have diabetes."
        else:
            result = "You may not have diabetes."

        return jsonify({'prediction': result, 'accuracy': accuracy}), 200

    except Exception as e:
        return jsonify({'error': str(e)}), 500

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8080, debug=True)
