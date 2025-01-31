import 'package:buddy_pair/home/screens/location_tab.dart';
import 'package:flutter/material.dart';

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
            appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        
        title: Row(
          children: [
           
          Image.asset('assets/images/buddypairmenu.png'),
            SizedBox(
              width: 5,
            ),
            
            Text(
                'Buddy pair',style: TextStyle( color: Colors.pink,
                fontSize: 24),
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
                child: Image.asset('assets/images/bellbutton.png')),
            const SizedBox(
              width: 10,
            ),
            const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/profile pic 3.png'),
            )
          ],
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
                  DesignationTab(),
                  QualificationTab()
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget DesignationTab() {
  return Column(
    children: [],
  );
}

Widget QualificationTab() {
  return Column(
    children: [],
  );
}
