import 'package:buddy_pair/Common/circular_container.dart';
import 'package:buddy_pair/Common/color_constants.dart';
import 'package:buddy_pair/common/appbarfonts_constants.dart';
import 'package:flutter/material.dart';

class Messenger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4B164C),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: const Color(0xff4B164C),
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                whitecCircularContainer(
                  imagePath: "assets/images/left.png",
                  onPressed: () {},
                ),
                const SizedBox(width: 60),
                AppbarfontsConstants(
                  title: 'Messages',
                  color: ColorConstants.whiteColor,
                  fontSize: 24,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppbarfontsConstants(
                  title: 'Recent Matches',
                  color: const Color(0xFFFDF7FD),
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 130,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    width: 90,
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/picmess.png'),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFFDF7FD),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(8.0),
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFDD88CF),
                                  borderRadius: BorderRadius.circular(100),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/images/picmess.png'),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: AppbarfontsConstants(
                                      title: 'Alfredo Calzoni',
                                      color: const Color(0Xff22172A),
                                      fontSize: 18,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: AppbarfontsConstants(
                                      title: 'What about that new jacket\n if I ...',
                                      color: const Color(0Xff22172A),
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.circle_rounded,
                                      color: Color(0xFFDD88CF),
                                    ),
                                  ),
                                  AppbarfontsConstants(
                                    title: '09:18',
                                    color: const Color(0xFFDD88CF),
                                    fontSize: 12,
                                  ),
                                ],
                              )
                            ],
                          ),
                          const Divider(),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
