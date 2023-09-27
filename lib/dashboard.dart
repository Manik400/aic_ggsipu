import 'package:aic_ggsipu/caard.dart';
import 'package:aic_ggsipu/feature_card.dart';
import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  List<String> imgpth = [
    'assets/aichert.jpeg',
    'assets/cancaic.jpeg',
    'assets/diabaic.jpeg'
  ];
  List<String> text = [
    'Heart disease is the leading cause of death for people of most racial and ethnic groups in many countries',
    'Cancer is a generic term for a large group of diseases that can affect any part of the body. ',
    'Diabetes is a chronic disease that occurs either when the pancreas does not produce enough insulin or when the body cannot effectively use the insulin it produces.'
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> featurs = [
      featureCard(imgpath: imgpth[0], text: text[0]),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu, color: Colors.black87,)),
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
                // Add your navigation logic here
                Navigator.pop(context); // Close the drawer
                // Navigate to the home screen
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: () {
                // Add your navigation logic here
                Navigator.pop(context); // Close the drawer
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
                )
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Hey! Jhon',
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Welcome , Let Start',
                    style: TextStyle(
                      fontSize: 23,
                    ),
                  ),
                ),
              ),
              Text(
                'Blood Group  :  B+ve',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.black54,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Features', style: TextStyle(
                        color: Colors.black,
                        fontSize: 15
                    ),),
                    TextButton(onPressed: () {}, child: Text('See All'))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                  height: 280,
                  child: ListView.builder(
                    padding: EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemBuilder: (context, index) {
                      return featureCard(imgpath: imgpth[index], text: text[index]);
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Fix your Appointment', style: TextStyle(
                      color: Colors.black,
                      fontSize: 15
                    ),),
                    TextButton(onPressed: () {}, child: Text('See All'))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                  height: 319.0,
                  child: ListView.builder(
                    padding: EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemBuilder: (context, index) {
                      return cardd();
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon : Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(icon: Icon(Icons.history),label: 'History'),
        ],
      ),
    );
  }
}
