// import 'package:flutter/material.dart';
//
// class PredictionScreen extends StatefulWidget {
//   @override
//   _PredictionScreenState createState() => _PredictionScreenState();
// }
//
// class _PredictionScreenState extends State<PredictionScreen> {
//   TextEditingController pregnanciesController = TextEditingController();
//   TextEditingController glucoseController = TextEditingController();
//   TextEditingController bloodPressureController = TextEditingController();
//   TextEditingController skinThicknessController = TextEditingController();
//   TextEditingController insulinController = TextEditingController();
//   TextEditingController bmiController = TextEditingController();
//   TextEditingController diabetesPedigreeController = TextEditingController();
//   TextEditingController ageController = TextEditingController();
//
//   String predictionResult = "";
//   double accuracy = 0.0;
//
//   Future<void> predictDiabetes() async {
//     final apiUrl = Uri.parse('http://192.168.1.9:8080/predict');
//
//     final requestBody = {
//       "Pregnancies": double.parse(pregnanciesController.text),
//       "Glucose": double.parse(glucoseController.text),
//       "BloodPressure": double.parse(bloodPressureController.text),
//       "SkinThickness": double.parse(skinThicknessController.text),
//       "Insulin": double.parse(insulinController.text),
//       "BMI": double.parse(bmiController.text),
//       "DiabetesPedigreeFunction": double.parse(diabetesPedigreeController.text),
//       "Age": double.parse(ageController.text),
//     };
//
//     final response = await http.post(
//       apiUrl,
//       headers: {
//         'Content-Type': 'application/json',
//       },
//       body: jsonEncode(requestBody),
//     );
//
//     if (response.statusCode == 200) {
//       final responseData = jsonDecode(response.body);
//       predictionResult = responseData['prediction'];
//       accuracy = responseData['accuracy'];
//     } else {
//       predictionResult = "Error: Unable to make a prediction.";
//     }
//
//     setState(() {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Diabetes Prediction'),
//         ),
//         body: Padding(
//             padding: EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 TextField(
//                   controller: pregnanciesController,
//                   decoration: InputDecoration(labelText: 'Pregnancies'),
//                 ),
//                 TextField(
//                   controller: glucoseController,
//                   decoration: InputDecoration(labelText: 'Glucose'),
//                 ),
//                 TextField(
//                   controller: bloodPressureController,
//                   decoration: InputDecoration(labelText: 'Blood Pressure'),
//                 ),
//                 TextField(
//                   controller: skinThicknessController,
//                   decoration: InputDecoration(labelText: 'Skin Thickness'),
//                 ),
//                 TextField(
//                   controller: insulinController,
//                   decoration: InputDecoration(labelText: 'Insulin'),
//                 ),
//                 TextField(
//                   controller: bmiController,
//                   decoration: InputDecoration(labelText: 'BMI'),
//                 ),
//                 TextField(
//                   controller: diabetesPedigreeController,
//                   decoration: InputDecoration(labelText: 'Diabetes Pedigree Function'),
//                 ),
//                 TextField(
//                   controller: ageController,
//                   decoration: InputDecoration(labelText: 'Age'),
//                 ),
//                 SizedBox(height: 16.0),
//                 ElevatedButton(
//                   onPressed: predictDiabetes,
//                   child: Text('Predict Diabetes'),
//                 ),
//                 SizedBox(height: 16.0),
//                 Text('Prediction Result: $predictionResult'),
//                 Text('Accuracy: ${accuracy.toStringAsFixed(2)}'),
//               ],
//             ),
//              ),
//             );
//       }
// }