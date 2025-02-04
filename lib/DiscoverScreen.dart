import 'package:buddy_pair/Common/Text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class User {
  final String name;
  final int age;
  final String country;
  final String distance;
  final String image;

  User(
      {required this.name,
      required this.age,
      required this.country,
      required this.distance,
      required this.image});
}

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  // Default selected state
  String _dropdownValue = 'Germany';

  final List<String> _states = [
    'Germany',
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Bihar',
    'Chhattisgarh',
    'Goa',
    'Gujarat',
    'Haryana',
    'Himachal Pradesh',
    'Jharkhand',
    'Karnataka',
    'Kerala',
    'Madhya Pradesh',
    'Maharashtra',
    'Manipur',
    'Meghalaya',
    'Mizoram',
    'Nagaland',
    'Odisha',
    'Punjab',
    'Rajasthan',
    'Sikkim',
    'Tamil Nadu',
    'Telangana',
    'Tripura',
    'Uttar Pradesh',
    'Uttarakhand',
    'West Bengal',
  ];

  final List<User> users = [
    User(
        name: 'Alfrarado',
        age: 19,
        country: 'Germany',
        distance: '1.2 km away',
        image: 'assets/images/Alferdo.png'),
    User(
        name: 'Brandon',
        age: 22,
        country: 'France',
        distance: '2.5 km away',
        image: 'assets/images/Brandon.png'),
    User(
        name: 'Eddie',
        age: 24,
        country: 'USA',
        distance: '3.0 km away',
        image: 'assets/images/Eddie.png'),
    User(
        name: 'James',
        age: 21,
        country: 'UK',
        distance: '0.8 km away',
        image: 'assets/images/James.png'),
    User(
        name: 'Rayul',
        age: 23,
        country: 'Canada',
        distance: '1.5 km away',
        image: 'assets/images/Rayul.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/LocationIcon.png',
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(width: 5),
                    DropdownButton<String>(
                      value: _dropdownValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          _dropdownValue = newValue!;
                        });
                      },
                      items:
                          _states.map<DropdownMenuItem<String>>((String state) {
                        return DropdownMenuItem<String>(
                          value: state,
                          child: Text(
                            state,
                            style: TextStyles()
                                .smallText(color: Color(0xff4b164c)),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Discover',
                  style: TextStyles().heading1(color: Color(0xff4b164c)),
                ),
                const Spacer(),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 19,
                    child: Center(
                        child: Image.asset('assets/images/SearchIcon.png')),
                  ),
                ),
                const SizedBox(width: 10),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 19,
                    child: Center(
                        child: Image.asset('assets/images/SettingIcon.png')),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Dynamic Horizontal ListView
              Container(
                height: 250,
                padding: const EdgeInsets.all(10),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    final user = users[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Stack(
                        children: [
                          Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border:
                                  Border.all(color: Colors.white, width: 3.0),
                              image: DecorationImage(
                                image: AssetImage(user.image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 9,
                            left: 9,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                color: Color(0xff4b164c),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Color(0xffdd88cf), width: 1.0),
                              ),
                              child: Text('NEW',
                                  style: TextStyles().smallText(
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                          Positioned(
                            top: 125,
                            left: 32,
                            child: Column(
                              children: [
                                Container(
                                  height: 30,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.white, width: 1.0),
                                    color: Colors.grey.withOpacity(0.5),
                                  ),
                                  child: Center(
                                    child: Text(user.distance,
                                        style: TextStyles().smallText(
                                          color: Colors.white,
                                        )),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(user.name,
                                        style: TextStyles()
                                            .smallText(color: Colors.white)),
                                    const SizedBox(width: 5),
                                    Text('${user.age}',
                                        style: TextStyles()
                                            .smallText(color: Colors.white)),
                                  ],
                                ),
                                Text(user.country,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Interest',
                    style: TextStyles().subheading(color: Color(0xff4b164c)),
                  ),
                  Text(
                    'View all',
                    style: TextStyles().bodyText(color: Color(0xffdd88cf)),
                  ),
                ],
              ),
              const IntrestsList(),
              SizedBox(height: 10),
              Text(
                'Around Me',
                style: TextStyles().heading2(color: Color(0xff4b164c)),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'People with ',
                      style: TextStyles().bodyText(color: Colors.grey),
                    ),
                    TextSpan(
                      text: '"Music"',
                      style: TextStyles().bodyText(color: Color(0xffdd88cf)),
                    ),
                    TextSpan(
                      text: ' Interest Around You',
                      style: TextStyles().bodyText(color: Colors.grey),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),
              Stack(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/Maps.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  Positioned(
                    top: 90,
                    left: 45,
                    child: Column(children: [
                      Container(
                        height: 30,
                        child: Center(
                            child: CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('assets/images/elipsse.png'),
                        )),
                      ),
                    ]),
                  ),
                  Positioned(
                    top: 70,
                    left: 9,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Color(0xff4b164c),
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(color: Color(0xffdd88cf), width: 1.0),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/Icon.png',
                            height: 20,
                            width: 20,
                          ),
                          Text('Connect with clara',
                              style: TextStyles().smallText(
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 90,
                    right: 45,
                    child: Column(children: [
                      Container(
                        height: 30,
                        child: Center(
                            child: CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('assets/images/Rayul.png'),
                        )),
                      ),
                    ]),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class IntrestsList extends StatefulWidget {
  const IntrestsList({Key? key}) : super(key: key);

  @override
  _IntrestsListState createState() => _IntrestsListState();
}

class _IntrestsListState extends State<IntrestsList> {
  String? selectedTag;

  final List<Map<String, dynamic>> firstRowInterests = [
    {'image': 'assets/images/football.jpeg', 'label': 'Football'},
    {'image': 'assets/images/nature.jpeg', 'label': 'Nature'},
    {'image': 'assets/images/language.jpeg', 'label': 'Language'},
    {'image': 'assets/images/travel.jpeg', 'label': 'Travel'},
    {'image': 'assets/images/bussinessman.png', 'label': 'Jobs'},
    {'image': 'assets/images/reels.jpeg', 'label': 'Reels'},
  ];

  final List<Map<String, dynamic>> secondRowInterests = [
    {'image': 'assets/images/camera.png', 'label': 'Photography'},
    {'image': 'assets/images/music.png', 'label': 'Music'},
    {'image': 'assets/images/writing.jpeg', 'label': 'Writing'},
    {'image': 'assets/images/video_clapper.png', 'label': 'Movies'},
    {'image': 'assets/images/tech.jpeg', 'label': 'Technology'},
    {'image': 'assets/images/fashion.jpeg', 'label': 'Fashion & Style'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 5),
        // First Row (Scrollable)
        SizedBox(
          height: 50,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: firstRowInterests.map((interest) {
                bool isSelected = selectedTag == interest['label'];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTag = isSelected ? null : interest['label'];
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 12),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color:
                          isSelected ? const Color(0xffdd88cf) : Colors.white,
                      border: Border.all(
                        color:
                            isSelected ? const Color(0xffdd88cf) : Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          interest['image'],
                          height: 24,
                          width: 24,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          interest['label'],
                          style: GoogleFonts.aldrich(
                            fontSize: 16,
                            color: isSelected
                                ? Colors.white
                                : const Color(0xff4b164c),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        const SizedBox(height: 16),
        // Second Row (Scrollable)
        SizedBox(
          height: 50,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: secondRowInterests.map((interest) {
                bool isSelected = selectedTag == interest['label'];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTag = isSelected ? null : interest['label'];
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 12),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color:
                          isSelected ? const Color(0xffdd88cf) : Colors.white,
                      border: Border.all(
                        color:
                            isSelected ? const Color(0xffdd88cf) : Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          interest['image'],
                          height: 24,
                          width: 24,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          interest['label'],
                          style: GoogleFonts.aldrich(
                            fontSize: 16,
                            color: isSelected
                                ? Colors.white
                                : const Color(0xff4b164c),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
