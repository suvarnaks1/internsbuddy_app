import 'package:flutter/material.dart';

class PersonalDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Stack(
              children: [
                Container(
                    width: 350,
                    height: 720,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffD9D9D9), width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                        padding: EdgeInsets.only(top: 20, left: 90),
                        child: Text(
                          'Personal Details',
                          style: TextStyle(fontSize: 20),
                        ))),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 80),
                  child: SizedBox(
                    width: 310,
                    height: 40,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Age',
                        hintStyle: TextStyle(color: Color(0xffB3B3B3)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 140),
                  child: SizedBox(
                    width: 310,
                    height: 40,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'DOB',
                        hintStyle: TextStyle(color: Color(0xffB3B3B3)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 190),
                  child: SizedBox(
                    width: 310,
                    height: 40,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Hobbies',
                        hintStyle: TextStyle(color: Color(0xffB3B3B3)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 250),
                  child: SizedBox(
                    width: 310,
                    height: 40,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Interests',
                        hintStyle: TextStyle(color: Color(0xffB3B3B3)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 310),
                  child: SizedBox(
                    width: 310,
                    height: 40,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Smoking Habits',
                        hintStyle: TextStyle(color: Color(0xffB3B3B3)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 360),
                  child: SizedBox(
                    width: 310,
                    height: 40,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Drinking Habits',
                        hintStyle: TextStyle(color: Color(0xffB3B3B3)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 420),
                  child: SizedBox(
                    width: 310,
                    height: 40,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Qualifications',
                        hintStyle: TextStyle(color: Color(0xffB3B3B3)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 480),
                  child: SizedBox(
                    width: 310,
                    height: 40,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Profile Pic',
                        hintStyle: TextStyle(color: Color(0xffB3B3B3)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 472, left: 280),
                  child: IconButton(
                      onPressed: () {},
                      icon: Image(
                          image: AssetImage('assets/images/Image_icon.png'))),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 530),
                  child: SizedBox(
                    width: 310,
                    height: 40,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Add More Images',
                        hintStyle: TextStyle(color: Color(0xffB3B3B3)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 522, left: 280),
                  child: IconButton(
                      onPressed: () {},
                      icon: Image(
                          image: AssetImage('assets/images/Image_icon.png'))),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 580),
                  child: SizedBox(
                    width: 310,
                    height: 40,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Short Reel',
                        hintStyle: TextStyle(color: Color(0xffB3B3B3)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 575, left: 282),
                  child: IconButton(
                      onPressed: () {},
                      icon: Image(
                          image: AssetImage('assets/images/video_icon.png'))),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 640),
                  child: SizedBox(
                    width: 310,
                    height: 60,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        fillColor: Color(0xff2C2C2C),
                        hintText: 'Next',
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
