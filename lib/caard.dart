import 'package:flutter/material.dart';
// import 'package:janta24_task/utils/buttons.dart';

class cardd extends StatefulWidget {
  const cardd({super.key});

  @override
  State<cardd> createState() => _carddState();
}

class _carddState extends State<cardd> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 6.0, 0.0),
      child: Container(
        // height: 500,
        width: 190,
        child: Card(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
                child: Container(
                  height: 100,
                  width: 190,
                  color: Colors.deepPurple.shade200,
                  child: Container(
                    height: 40,
                      width: 40,
                      child: CircleAvatar(
                          maxRadius: 5.0,
                          child: Icon(
                            Icons.person,
                            color: Colors.deepPurpleAccent,
                          ))),
                ),
              ),
              SizedBox(
                height: 17.0,
              ),
              Text('Dr. ABCDEF',
                  style: TextStyle(color: Colors.black, fontSize: 15.0)),
              Text(
                'AIIMS , Delhi ',
                style: TextStyle(color: Colors.black54, fontSize: 12.0),
              ),
              SizedBox(
                height: 6.0,
              ),
              Text(
                '880 Followers',
                style: TextStyle(color: Colors.blue.shade900, fontSize: 10.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Know More',
                  )),
              TextButton(onPressed: () {}, child: Text('Fix'))
              // primaryButton(MediaQuery.of(context).size.width*0.8, title: 'Follow')
              // followStyleButton((140*0.8).toDouble(), callback: (){}, title: 'Follow')
            ],
          ),
        ),
      ),
    );
  }
}
