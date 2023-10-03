import 'package:aic_ggsipu/dashboard.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  Image image = Image.asset('assets/aichert.jpeg');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
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
          Container(
            height: 300,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.purple,
                      Colors.blue
                    ]
                )
            ),
          ),
          Positioned(
            top: 50,left: 105,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  shape: BoxShape.rectangle,
                  color: Colors.deepPurple.shade100
                ),
                child: Icon(Icons.person),
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 130,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome Sir',textAlign: TextAlign.center,style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ), ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 250.0, 10.0, 10.0),
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey
                ),
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white
              ),
              height: 270,
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.person, size: 20,),
                    title: Text('ABCD'),
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  ListTile(
                    leading: Icon(Icons.email, size: 20,),
                    title: Text('abcd1234567890@XXXXX.com'),
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  ListTile(
                    leading: Icon(Icons.date_range, size: 20,),
                    title: Text('29/2/2000'),
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  ListTile(
                    leading: Icon(Icons.male, size: 20,),
                    title: Text('Male'),
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  ListTile(
                    leading: Icon(Icons.phone_android, size: 20,),
                    title: Text('XXXXXXXXXXX'),
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
