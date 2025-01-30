import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:buddy_pair/Common/Text.dart';

class Sent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4B164C),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40, left: 20),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xffDD88CF),
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: Center(
                      child: IconButton(
                          onPressed: () {},
                          icon: Image(
                              image: AssetImage('assets/images/Search.png')))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40, left: 110),
                child: Text(
                  'Sent',
                  style: GoogleFonts.aldrich(fontSize: 20, color: Colors.white),
                ),
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  height: 5000,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80),
                      topRight: Radius.circular(80),
                    ),
                  ),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 5, left: 175),
                            child: IconButton(
                                onPressed: () {},
                                icon: Image(
                                    image: AssetImage(
                                        "assets/images/Rectangle 1131.png",))),),
                          Padding(
                            padding: EdgeInsets.only(top: 80, left: 20),
                            child: Row(
                              children: [
                                Text(
                                  'A',
                                  style: TextStyles()
                                      .subheading(color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 120),
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/profile_pic_snt.png'),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 125, left: 100),
                              child: Text(
                                'Afrin Sabila',
                                style: TextStyles().subheading(
                                  color: Color(0xff000E08),
                                ),
                              )),
                          Padding(
                              padding: EdgeInsets.only(top: 150, left: 100),
                              child: Text(
                                'Life is beautiful 👌',
                                style: TextStyles().smallText(
                                  color: Color(0xff797C7B),
                                ),
                              )),
                          Padding(
                            padding: EdgeInsets.only(top: 130, left: 330),
                            child: IconButton(
                                onPressed: () {},
                                icon: Image(
                                    image: AssetImage('assets/images/X.png'))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 200),
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/Rectangle 1151.png'),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 205, left: 100),
                              child: Text(
                                'Adil Adnan',
                                style: TextStyles().subheading(
                                  color: Color(0xff000E08),
                                ),
                              )),
                          Padding(
                              padding: EdgeInsets.only(top: 230, left: 100),
                              child: Text(
                                'Be your own hero 💪',
                                style: TextStyles().smallText(
                                  color: Color(0xff797C7B),
                                ),
                              )),
                          Padding(
                            padding: EdgeInsets.only(top: 210, left: 330),
                            child: IconButton(
                                onPressed: () {},
                                icon: Image(
                                    image: AssetImage('assets/images/X.png'))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 290, left: 20),
                            child: Row(
                              children: [
                                Text(
                                  'B',
                                  style: TextStyles()
                                      .subheading(color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 330),
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/Rectangle 1150.png'),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 335, left: 100),
                              child: Text(
                                'Bristy Haque',
                                style: TextStyles().subheading(
                                  color: Color(0xff000E08),
                                ),
                              )),
                          Padding(
                              padding: EdgeInsets.only(top: 360, left: 100),
                              child: Text(
                                'Keep working ✍',
                                style: TextStyles().smallText(
                                  color: Color(0xff797C7B),
                                ),
                              )),
                          Padding(
                            padding: EdgeInsets.only(top: 340, left: 330),
                            child: IconButton(
                                onPressed: () {},
                                icon: Image(
                                    image: AssetImage('assets/images/X.png'))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 410),
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/Ellipse 308.png'),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 415, left: 100),
                              child: Text(
                                'Jhon Borino',
                                style: TextStyles().subheading(
                                  color: Color(0xff000E08),
                                ),
                              )),
                          Padding(
                              padding: EdgeInsets.only(top: 440, left: 100),
                              child: Text(
                                'Make yourself proud 😍',
                                style: TextStyles().smallText(
                                  color: Color(0xff797C7B),
                                ),
                              )),
                          Padding(
                            padding: EdgeInsets.only(top: 420, left: 330),
                            child: IconButton(
                                onPressed: () {},
                                icon: Image(
                                    image: AssetImage('assets/images/X.png'))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 490),
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/Ellipse 318.png'),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 500, left: 100),
                              child: Text(
                                'Borsha Akther',
                                style: TextStyles().subheading(
                                  color: Color(0xff000E08),
                                ),
                              )),
                          Padding(
                              padding: EdgeInsets.only(top: 525, left: 100),
                              child: Text(
                                'Flowers are beautiful 🌸',
                                style: TextStyles().smallText(
                                  color: Color(0xff797C7B),
                                ),
                              )),
                          Padding(
                            padding: EdgeInsets.only(top: 510, left: 330),
                            child: IconButton(
                                onPressed: () {},
                                icon: Image(
                                    image: AssetImage('assets/images/X.png'))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 580, left: 20),
                            child: Row(
                              children: [
                                Text(
                                  'S',
                                  style: TextStyles()
                                      .subheading(color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 630),
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/Ellipse 304.png'),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 635, left: 100),
                              child: Text(
                                'Sheik Sadi',
                                style: TextStyles().subheading(
                                  color: Color(0xff000E08),
                                ),
                              )),
                          Padding(
                              padding: EdgeInsets.only(top: 660, left: 100),
                              child: Text(
                                'Life is beautiful 👌',
                                style: TextStyles().smallText(
                                  color: Color(0xff797C7B),
                                ),
                              )),
                          Padding(
                            padding: EdgeInsets.only(top: 640, left: 330),
                            child: IconButton(
                                onPressed: () {},
                                icon: Image(
                                    image: AssetImage('assets/images/X.png'))),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
