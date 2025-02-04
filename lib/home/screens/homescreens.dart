import 'package:buddy_pair/Common/Text.dart';
import 'package:buddy_pair/home/screens/location_tab.dart';
import 'package:buddy_pair/home/screens/rightsidemenu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Rightsidemenu(),
        appBar: AppBar(
          automaticallyImplyLeading: true, // Enables the menu button
          centerTitle: true,
          title: Row(
            children: [
              Text(
                'Buddy pair',
                style: TextStyles().heading2(color: Color(0xff4b164c)),
              ),
              const Spacer(),
              Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  child: Image.asset('assets/images/notificationIcon.png')),
              const SizedBox(
                width: 10,
              ),
              const CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/profile pic 3.png'),
              )
            ],
          ),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Color(0xff4b164c), // Change the drawer icon color here
          ),
        ),
        backgroundColor: Color(0xFFFCF7FD),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 45,
                margin: const EdgeInsets.symmetric(horizontal: 6),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 3),
                  color: Color(0xFFF8E7F6),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Container(
                        height: 50,
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Tab(text: "Location")),
                    Container(
                        height: 50,
                        width: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Tab(
                          text: "Designation",
                        )),
                    Container(
                        height: 50,
                        width: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9)),
                        child: Tab(text: "Qualification")),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(
                child: TabBarView(children: [
                  LocationTab(),
                  DesignationAndQualificationTab(),
                  DesignationAndQualificationTab()
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget DesignationAndQualificationTab() {
  // List of users' information
  final List<Map<String, String>> profiles = [
    {
      'image': 'assets/images/James.png',
      'match': '100% Match',
      'distance': '1.8 km away',
      'name': 'James, 20',
      'location': 'HANOVER',
    },
    {
      'image': 'assets/images/Eddie.png',
      'match': '90% Match',
      'distance': '2 km away',
      'name': 'Eddie, 23',
      'location': 'DORTMUND',
    },
    {
      'image': 'assets/images/Brandon.png',
      'match': '90% Match',
      'distance': '3.2 km away',
      'name': 'Brandon, 20',
      'location': 'BERLIN',
    },
    {
      'image': 'assets/images/Alferdo.png',
      'match': '90% Match',
      'distance': '3.2 km away',
      'name': 'Alex, 24',
      'location': 'BERLIN',
    },
    {
      'image': 'assets/images/Eddie.png',
      'match': '90% Match',
      'distance': '3.2 km away',
      'name': 'Alex, 24',
      'location': 'BERLIN',
    },
    {
      'image': 'assets/images/Eddie.png',
      'match': '90% Match',
      'distance': '3.2 km away',
      'name': 'Alex, 24',
      'location': 'BERLIN',
    },
    {
      'image': 'assets/images/Eddie.png',
      'match': '90% Match',
      'distance': '3.2 km away',
      'name': 'Alex, 24',
      'location': 'BERLIN',
    },
    {
      'image': 'assets/images/Eddie.png',
      'match': '90% Match',
      'distance': '3.2 km away',
      'name': 'Alex, 24',
      'location': 'BERLIN',
    },
    {
      'image': 'assets/images/Eddie.png',
      'match': '90% Match',
      'distance': '3.2 km away',
      'name': 'Alex, 24',
      'location': 'BERLIN',
    },
  ];

  return Column(
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: GridView.builder(
            itemCount: profiles.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.6,
            ),
            itemBuilder: (BuildContext context, int index) {
              var profile = profiles[index];
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFC4C4C4),
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Stack(
                  children: [
                    // Background image
                    Container(
                      width: double.maxFinite,
                      height: double.maxFinite,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(profile['image']!),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    // Match label
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Container(
                        width: 120,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0xFFDD88CF),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            profile['match']!,
                            style: GoogleFonts.aldrich(
                                color: Colors.white, fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                    // Distance label

                    // Name label
                    Positioned(
                      top: 370,
                      left: 65,
                      child: Column(
                        children: [
                          Container(
                            width: 110,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Color(0xE6704d63),
                              border: Border.all(
                                color: Color(0xB39d5a75),
                                style: BorderStyle.solid,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Text(
                                profile['distance']!,
                                style: GoogleFonts.aldrich(color: Colors.white),
                              ),
                            ),
                          ),
                          Text(
                            profile['name']!,
                            style: GoogleFonts.aldrich(
                                fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            profile['location']!,
                            style: GoogleFonts.aldrich(
                                fontSize: 14, color: Colors.white54),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    ],
  );
}
