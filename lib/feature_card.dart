import 'package:flutter/material.dart';

class featureCard extends StatefulWidget {
  String imgpath;
  String text;
  featureCard({required this.imgpath, required this.text});

  @override
  State<featureCard> createState() => _featureCardState();
}

class _featureCardState extends State<featureCard> {
  Image image = Image.asset('assets/aichert.jpeg');
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width * 0.7,
        child: Card(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Image.asset('${widget.imgpath}').image,
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.white.withOpacity(0.55), BlendMode.dstATop),
                    ),
                    borderRadius: BorderRadius.circular(8.0)
                    // shape: BoxShape.circle,

                    ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '${widget.text}',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    Divider(
                      height: 1,
                      thickness: 1,
                      color: Colors.black54,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Start Survey',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.deepPurple.shade400),
                          textStyle: MaterialStateProperty.all<TextStyle>(
                            TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
