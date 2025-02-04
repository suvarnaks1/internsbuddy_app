
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/Text.dart';



class FilterScreen extends StatefulWidget {
  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
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
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40, left: 110),
                child: Text(
                  'Filter',
                  style: GoogleFonts.aldrich(fontSize: 20, color: Colors.white),
                ),
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 180),
                          child: IconButton(
                              onPressed: () {},
                              icon: Image(
                                  image: AssetImage(
                                "assets/images/Rectangle 1131.png",
                              ))),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 60, left: 60),
                          child: Row(
                            children: [
                              Text(
                                'SORT BY',
                                style: TextStyles()
                                    .subheading(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 140, left: 60),
                            child: Text(
                              'Newest Members',
                              style: TextStyles().smallText(
                                color: Color(0xff797C7B),
                              ),
                            )),

                        Padding(
                          padding: const EdgeInsets.only(top: 155),
                          child: Divider(color: Colors.black,),
                        ),


                        Padding(
                          padding: EdgeInsets.only(top: 125, left: 330),
                          child: IconButton(
                              onPressed: () {},
                              icon: Image(
                                  image: AssetImage(
                                      'assets/images/Check circle.png'))),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 180, left: 60),
                            child: Text(
                              'Last Active',
                              style: TextStyles().smallText(
                                color: Color(0xff797C7B),
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 165, left: 330),
                          child: IconButton(
                              onPressed: () {},
                              icon: Image(
                                  image: AssetImage(
                                      'assets/images/Check circle.png'))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 195),
                          child: Divider(color: Colors.black,),
                        ),

                        Padding(
                            padding: EdgeInsets.only(top: 220, left: 60),
                            child: Text(
                              'Distance',
                              style: TextStyles().smallText(
                                color: Color(0xff797C7B),
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 205, left: 330),
                          child: IconButton(
                              onPressed: () {},
                              icon: Image(
                                  image: AssetImage(
                                      'assets/images/Check circle.png'))),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 235),
                          child: Divider(color: Colors.black,),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 260, left: 60),
                            child: Text(
                              'Popularity',
                              style: TextStyles().smallText(
                                color: Color(0xff797C7B),
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 245, left: 330),
                          child: IconButton(
                              onPressed: () {},
                              icon: Image(
                                  image: AssetImage(
                                      'assets/images/Check circle.png'))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 275),
                          child: Divider(color: Colors.black,),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 300, left: 60),
                            child: Text(
                              'Age',
                              style: TextStyles().smallText(
                                color: Color(0xff797C7B),
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 285, left: 330),
                          child: IconButton(
                              onPressed: () {},
                              icon: Image(
                                  image: AssetImage(
                                      'assets/images/Check circle.png'))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 315),
                          child: Divider(color: Colors.black,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 370, left: 60),
                          child: Text(
                            'Filter By',
                            style:
                                TextStyles().subheading(color: Colors.black),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 430, left: 60),
                            child: Text(
                              'Gender',
                              style: TextStyles().smallText(
                                color: Color(0xff797C7B),
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 415, left: 330),
                          child: IconButton(
                              onPressed: () {},
                              icon: Image(
                                  image: AssetImage(
                                      'assets/images/Check circle.png'))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 445),
                          child: Divider(color: Colors.black,),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 470, left: 60),
                            child: Text(
                              'Location',
                              style: TextStyles().smallText(
                                color: Color(0xff797C7B),
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 455, left: 330),
                          child: IconButton(
                              onPressed: () {},
                              icon: Image(
                                  image: AssetImage(
                                      'assets/images/Check circle.png'))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 485),
                          child: Divider(color: Colors.black,),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 505, left: 60),
                            child: Text(
                              'Interest/Hobbies',
                              style: TextStyles().smallText(
                                color: Color(0xff797C7B),
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 490, left: 330),
                          child: IconButton(
                              onPressed: () {},
                              icon: Image(
                                  image: AssetImage(
                                      'assets/images/Check circle.png'))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 520),
                          child: Divider(color: Colors.black,),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 545, left: 60),
                            child: Text(
                              'Languages spoken',
                              style: TextStyles().smallText(
                                color: Color(0xff797C7B),
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 530, left: 330),
                          child: IconButton(
                              onPressed: () {},
                              icon: Image(
                                  image: AssetImage(
                                      'assets/images/Check circle.png'))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 560),
                          child: Divider(color: Colors.black,),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 580, left: 60),
                            child: Text(
                              'Relationship Goals',
                              style: TextStyles().smallText(
                                color: Color(0xff797C7B),
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 565, left: 330),
                          child: IconButton(
                              onPressed: () {},
                              icon: Image(
                                  image: AssetImage(
                                      'assets/images/Check circle.png'))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 595),
                          child: Divider(color: Colors.black,),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 650,left: 100),
                          child:

                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.pinkAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text('Cancel',style: TextStyle(color: Colors.white),),
                              ),
                        ),

                              Padding(
                                padding:  EdgeInsets.only(top: 650,left: 220 ),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff4B164C),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Text('Apply',style: TextStyle(color: Colors.white),),
                                ),
                              ),

                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


