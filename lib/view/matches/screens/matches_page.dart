import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:buddy_pair/Common/Text.dart';

class MatchesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 30),
              child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(100)),
                  child: IconButton(
                      onPressed: () {},
                      icon: Image(
                          image: AssetImage("assets/images/backbutton.jpg")))),
            ),
            Padding(
              padding: EdgeInsets.only(left: 80, top: 40),
              child: Text('Matches',
                  style: GoogleFonts.aldrich(
                      fontSize: 24, color: Color(0xFF22172A))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, top: 30),
              child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(100)),
                  child: IconButton(
                      onPressed: () {},
                      icon: Image(
                          image: AssetImage("assets/images/sort_logo.jpg")))),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 20),
          child: Row(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 20),
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/profile pic 3.jpg'),
                                  fit: BoxFit.fill)),
                          child: Center(
                            child: Container(
                                width: 50,
                                child: Container(
                                    height: 35,
                                    child: Image(
                                      image: AssetImage("assets/images/like.png"),
                                      fit: BoxFit.contain,
                                    ))),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text.rich(TextSpan(
                    text: 'Likes ',
                    style: GoogleFonts.aldrich(fontSize: 16),
                    children: [
                      TextSpan(
                          text: '32',
                          style: GoogleFonts.aldrich(
                              fontSize: 16, color: Color(0xFFDD88CF)))
                    ]))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, top: 15),
                    child: Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xffDD88CF), width: 2),
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 115, top: 20),
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/profile_pic_2.png'),
                                  fit: BoxFit.fill)),
                          child: Center(
                            child: Container(
                                width: 50,
                                child: Container(
                                    height: 35,
                                    child: Image(
                                      image: AssetImage(
                                          "assets/images/chat_button.png"),
                                      fit: BoxFit.contain,
                                    ))),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text.rich(TextSpan(
                    text: 'Connect ',
                    style: GoogleFonts.aldrich(fontSize: 16),
                    children: [
                      TextSpan(
                          text: '15',
                          style: GoogleFonts.aldrich(
                              fontSize: 16, color: Color(0xFFDD88CF)))
                    ]))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 116, top: 15),
                    child: Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffDD88CF), width: 2),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Row(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: Text.rich(TextSpan(
                    text: 'Your Matches ',
                    style: GoogleFonts.aldrich(fontSize: 20),
                    children: [
                      TextSpan(
                          text: '47',
                          style: GoogleFonts.aldrich(
                              fontSize: 20, color: Color(0xFFDD88CF)))
                    ]))),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: GridView.builder(
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.6,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFC4C4C4),
                          width: 5,
                        ),
                        borderRadius: BorderRadius.circular(25)),
                    child: Stack(
                      children: [
                        Container(
                          width: double.maxFinite,
                          height: double.maxFinite,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/james.jpg"),
                                  fit: BoxFit.fill)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Container(
                            width: 120,
                            height: 35,
                            decoration: BoxDecoration(
                                color: Color(0xFFDD88CF),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(25),
                                    bottomRight: Radius.circular(25))),
                            child: Center(
                              child: Text('100% Match',
                                  style: GoogleFonts.aldrich(
                                      color: Colors.white, fontSize: 14)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 185, left: 30),
                          child: Container(
                            width: 110,
                            height: 35,
                            decoration: BoxDecoration(
                                color: Color(0xE6704d63),
                                border: Border.all(
                                    color: Color(0xB39d5a75),
                                    style: BorderStyle.solid,
                                    width: 2),
                                borderRadius: BorderRadius.circular(25)),
                            child: Center(
                              child: Text(
                                '1.8 km away',
                                style: GoogleFonts.aldrich(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 225, left: 30),
                          child: Text(
                            'James, 20',
                            style: GoogleFonts.aldrich(
                                fontSize: 20, color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 255, left: 50),
                          child: Text(
                            'HANOVER',
                            style: GoogleFonts.aldrich(
                                fontSize: 14, color: Colors.white54),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
        ),
      ]),
    ));
  }
}
