//
// class surveyPage extends StatefulWidget {
//   const surveyPage({super.key});
//
//   @override
//   State<surveyPage> createState() => _surveyPageState();
// }
//
// class _surveyPageState extends State<surveyPage> {
//   TextEditingController pregnancy_ = TextEditingController();
//   TextEditingController glucose_ = TextEditingController();
//   TextEditingController bloodpressure_ = TextEditingController();
//   TextEditingController SkinThickness_ = TextEditingController();
//   TextEditingController Insulin_ = TextEditingController();
//   TextEditingController BMI_ = TextEditingController();
//   TextEditingController DiabetesPedigreeFunction_ = TextEditingController();
//   TextEditingController Age_ = TextEditingController();
//
//
//   final String apiUrl = 'http://192.168.43.67:8080/predict'; // Use your API URL
//   String result = "";
//   String accuracy = "";
//   Future<void> _sendDataToPython() async {
//     final response = await http.post(
//       Uri.parse(apiUrl),
//       body: jsonEncode({"Pregnancies": pregnancy_.text,
//         "Glucose": glucose_.text,
//         "BloodPressure":bloodpressure_.text,
//         "SkinThickness": SkinThickness_.text,
//         "Insulin": Insulin_.text,
//         "BMI": BMI_.text,
//         "DiabetesPedigreeFunction": DiabetesPedigreeFunction_.text,
//         "Age": Age_.text}),
//     );
//
//     if (response.statusCode == 200) {
//       final Map<String, dynamic> data = jsonDecode(response.body);
//       setState(() {
//         result = data['result'];
//         accuracy = data['accuracy'];
//       });
//       print("$result and $accuracy");
//     } else {
//       print("Error");
//       throw Exception('Failed to load data from Python');
//
//     }
//   }
//   //
//   //
//   // Future<void> predictDiabetes() async {
//   //   final apiUrl = Uri.parse('http://192.168.1.9:8080/predict');
//   //
//   //   final requestBody = {
//   //     "Pregnancies": double.parse(pregnanciesController.text),
//   //     "Glucose": double.parse(glucoseController.text),
//   //     "BloodPressure": double.parse(bloodPressureController.text),
//   //     "SkinThickness": double.parse(skinThicknessController.text),
//   //     "Insulin": double.parse(insulinController.text),
//   //     "BMI": double.parse(bmiController.text),
//   //     "DiabetesPedigreeFunction": double.parse(diabetesPedigreeController.text),
//   //     "Age": double.parse(ageController.text),
//   //   };
//   //
//   //   final response = await http.post(
//   //     apiUrl,
//   //     headers: {
//   //       'Content-Type': 'application/json',
//   //     },
//   //     body: jsonEncode(requestBody),
//   //   );
//   //
//   //   if (response.statusCode == 200) {
//   //     final responseData = jsonDecode(response.body);
//   //     predictionResult = responseData['prediction'];
//   //     accuracy = responseData['accuracy'];
//   //   } else {
//   //     predictionResult = "Error: Unable to make a prediction.";
//   //   }
//   //
//   //   setState(() {});
//   // }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     Image image = Image.asset('assets/aichert.jpeg');
//     return Scaffold(backgroundColor: Colors.white,
//       appBar: AppBar(
//         // leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu, color: Colors.black87,)),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: CircleAvatar(
//                 child: IconButton(
//                   onPressed: (){},
//                   icon: Icon(
//                     Icons.person,
//                     color: Colors.black87,
//                   ),
//                 )),
//           ),
//         ],
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.deepPurple.shade100,
//               ),
//               child: ListTile(
//                 leading: CircleAvatar(child: Icon(Icons.person)),
//                 title: Text('John Wick'),
//                 titleTextStyle: TextStyle(fontSize: 18),
//                 subtitleTextStyle: TextStyle(fontSize: 13),
//                 subtitle: Text('---------@gmail.com'),
//                 onTap: () {
//                   // Add your navigation logic here
//                   Navigator.pop(context); // Close the drawer
//                   // Navigate to the home screen
//                 },
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.home),
//               title: Text('Home'),
//               onTap: () {
//                 Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
//                   return dashboard();
//                 }), (route) => false);
//                 // Navigate to the home screen
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.account_circle),
//               title: Text('Profile'),
//               onTap: () {
//                 // Add your navigation logic here
//                 Navigator.pop(context);// Close the drawer
//                 Navigator.push(context, MaterialPageRoute(builder: (context){
//                   return UserProfile();
//                 }));
//                 // Navigate to the settings screen
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.settings),
//               title: Text('Settings'),
//               onTap: () {
//                 // Add your navigation logic here
//                 Navigator.pop(context); // Close the drawer
//                 // Navigate to the settings screen
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.question_mark_outlined),
//               title: Text('FAQ\'s'),
//               onTap: () {
//                 // Add your navigation logic here
//                 Navigator.pop(context); // Close the drawer
//                 // Navigate to the settings screen
//               },
//             ),
//             Divider(
//               height: 1,
//               thickness: 1,
//               color: Colors.black12,
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Text(
//               'Supported by AIC GGSIPU , Delhi',
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 12),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 TextButton(
//                   onPressed: () {},
//                   child: Text(
//                     'About Us',
//                     style: TextStyle(fontSize: 10),
//                   ),
//                 ),
//                 Text(
//                   '|',
//                   style: TextStyle(fontSize: 10),
//                 ),
//                 TextButton(
//                   onPressed: () {},
//                   child: Text(
//                     'Privacy ',
//                     style: TextStyle(fontSize: 10),
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//
//       body: SingleChildScrollView(
//         child: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               colors: [
//                 Colors.purple,
//                 Colors.blue
//               ]
//             )
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Text('Diabetes Survey', style:  TextStyle(
//                   fontSize: 30,
//                   color: Colors.white
//                 ),),
//                 SizedBox(
//                   height: 40,
//                 ),
//                 Text('Number of times you were pregrnant',textAlign: TextAlign.left,),
//                 resuableTextField('Number of times you were pregrnant', false , pregnancy_),
//                 SizedBox(height: 20,),
//                 Text(' Plasma glucose concentration ',textAlign: TextAlign.left),
//                 resuableTextField(' Plasma glucose concentration ', false, glucose_),
//                 SizedBox(height: 20,),
//                 Text(' Diastolic blood pressure (mm Hg)',textAlign: TextAlign.left),
//                 resuableTextField(' Diastolic blood pressure (mm Hg)', false, bloodpressure_),
//                 SizedBox(height: 20,),
//                 Text(' Triceps skin fold thickness (mm)',textAlign: TextAlign.left),
//                 resuableTextField(' Triceps skin fold thickness (mm)', false, SkinThickness_),
//                 SizedBox(height: 20,),
//                 Text('  2-Hour serum insulin (mu U/ml)',textAlign: TextAlign.left),
//                 resuableTextField('  2-Hour serum insulin (mu U/ml)', false, Insulin_),
//                 SizedBox(height: 20,),
//                 Text(' Body mass index (weight in kg/(height in m)^2)',textAlign: TextAlign.left),
//                 resuableTextField(' Body mass index (weight in kg/(height in m)^2)', false, BMI_),
//                 SizedBox(height: 20,),
//                 Text(' Diabetes pedigree function',textAlign: TextAlign.left),
//                 resuableTextField(' Diabetes pedigree function', false, DiabetesPedigreeFunction_),
//                 SizedBox(height: 20,),
//                 Text(' Age',textAlign: TextAlign.left),
//                 resuableTextField(' Age ', false, Age_),
//                 SizedBox(height: 20,),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextButton(
//                     onPressed: () {
//                       try{
//                         _sendDataToPython();
//                       } catch(e){
//                         print(e.toString());
//                       }
//                     },
//                     child: Text(
//                       'Start Survey',
//                       style: TextStyle(
//                           color: Colors.black
//                       ),
//                     ),
//                     style: ButtonStyle(
//                       backgroundColor: MaterialStateProperty.all<Color>(
//                           Colors.white),
//                       textStyle: MaterialStateProperty.all<TextStyle>(
//                         TextStyle(
//                             color: Colors.black),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// TextField resuableTextField(String text,  bool isPasswordType, TextEditingController controller) {
//
//   return TextField(
//       controller: controller,
//       obscureText: isPasswordType,
//       enableSuggestions: !isPasswordType,
//       autocorrect: !isPasswordType,
//       cursorColor: Colors.white,
//       style: TextStyle(color: Colors.white.withOpacity(0.9)),
//       decoration: InputDecoration(
//         labelText: text,
//         labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
//         filled: true,
//         floatingLabelBehavior: FloatingLabelBehavior.never,
//         fillColor: Colors.white.withOpacity(0.3),
//         border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(30.0),
//             borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
//       ),
//     strutStyle: StrutStyle(
//       height: 0.2,
//       forceStrutHeight: true
//     ),
//
//       );
//
// }
