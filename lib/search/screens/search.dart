import 'package:buddy_pair/Common/appbarfonts_constants.dart';
import 'package:buddy_pair/Common/circular_container.dart';
import 'package:buddy_pair/Common/color_constants.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryColor,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: circularContainer(
                  imagePath: "assets/images/backbutton1.png", onPressed: () {}),
            ),
            SizedBox(
              width: 320,
              height:60,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Image.asset('assets/images/SearchIcon.png',),
                      fillColor: ColorConstants.whiteColor,
                      filled: true,
                      hintText: 'Search',
                      hintStyle: TextStyle(fontSize: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
