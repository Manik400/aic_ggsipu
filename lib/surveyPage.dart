import 'dart:convert';

import 'package:aic_ggsipu/UserProfile.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dashboard.dart';

class PredictionScreen extends StatefulWidget {
  @override
  _PredictionScreenState createState() => _PredictionScreenState();
}

class _PredictionScreenState extends State<PredictionScreen> {
  TextEditingController pregnanciesController = TextEditingController();
  TextEditingController glucoseController = TextEditingController();
  TextEditingController bloodPressureController = TextEditingController();
  TextEditingController skinThicknessController = TextEditingController();
  TextEditingController insulinController = TextEditingController();
  TextEditingController bmiController = TextEditingController();
  TextEditingController diabetesPedigreeController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  String predictionResult = "";
  double accuracy = 0.0;
  bool isLoading = false;
  Future<void> predictDiabetes() async {

    setState(() {
      isLoading = true; // Show loading indicator
    });

    final apiUrl = Uri.parse('http://192.168.43.67:8080/predict');

    final requestBody = {
      "Pregnancies": double.parse(pregnanciesController.text),
      "Glucose": double.parse(glucoseController.text),
      "BloodPressure": double.parse(bloodPressureController.text),
      "SkinThickness": double.parse(skinThicknessController.text),
      "Insulin": double.parse(insulinController.text),
      "BMI": double.parse(bmiController.text),
      "DiabetesPedigreeFunction": double.parse(diabetesPedigreeController.text),
      "Age": double.parse(ageController.text),
    };

    final response = await http.post(
      apiUrl,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(requestBody),
    );

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      predictionResult = responseData['prediction'];
      accuracy = responseData['accuracy'];
    } else {
      predictionResult = "Error: Unable to make a prediction.";
    }
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      isLoading = false; // Show loading indicator
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        // leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu, color: Colors.black87,)),
        title: Text('Diabetes Prediction' , style: TextStyle(color: Colors.black),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.person,
                    color: Colors.black87,
                  ),
                )),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade100,
              ),
              child: ListTile(
                leading: CircleAvatar(child: Icon(Icons.person)),
                title: Text('John Wick'),
                titleTextStyle: TextStyle(fontSize: 18),
                subtitleTextStyle: TextStyle(fontSize: 13),
                subtitle: Text('---------@gmail.com'),
                onTap: () {
                  // Add your navigation logic here
                  Navigator.pop(context); // Close the drawer
                  // Navigate to the home screen
                },
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
                  return dashboard();
                }), (route) => false);
                // Navigate to the home screen
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: () {
                // Add your navigation logic here
                Navigator.pop(context); // Close the drawer
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return UserProfile();
                }));
                // Navigate to the settings screen
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Add your navigation logic here
                Navigator.pop(context); // Close the drawer
                // Navigate to the settings screen
              },
            ),
            ListTile(
              leading: Icon(Icons.question_mark_outlined),
              title: Text('FAQ\'s'),
              onTap: () {
                // Add your navigation logic here
                Navigator.pop(context); // Close the drawer
                // Navigate to the settings screen
              },
            ),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.black12,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Supported by AIC GGSIPU , Delhi',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'About Us',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                Text(
                  '|',
                  style: TextStyle(fontSize: 10),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Privacy ',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  controller: pregnanciesController,
                  decoration: InputDecoration(labelText: 'Pregnancies'),
                ),
                TextField(
                  controller: glucoseController,
                  decoration: InputDecoration(labelText: 'Glucose'),
                ),
                TextField(
                  controller: bloodPressureController,
                  decoration: InputDecoration(labelText: 'Blood Pressure'),
                ),
                TextField(
                  controller: skinThicknessController,
                  decoration: InputDecoration(labelText: 'Skin Thickness'),
                ),
                TextField(
                  controller: insulinController,
                  decoration: InputDecoration(labelText: 'Insulin'),
                ),
                TextField(
                  controller: bmiController,
                  decoration: InputDecoration(labelText: 'BMI'),
                ),
                TextField(
                  controller: diabetesPedigreeController,
                  decoration:
                  InputDecoration(labelText: 'Diabetes Pedigree Function'),
                ),
                TextField(
                  controller: ageController,
                  decoration: InputDecoration(labelText: 'Age'),
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: predictDiabetes,
                  child: Text('Predict Diabetes'),
                ),
                SizedBox(height: 16.0),
                Text('Prediction Result: $predictionResult'),
                Text('Accuracy: ${accuracy.toStringAsFixed(2)}'),
              ],
            ),
          ),
          if (isLoading)
            Container(
              color: Colors.black.withOpacity(0.5), // Background color
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ), // Show loading indicator
        ],
      ),
    );
  }
}
