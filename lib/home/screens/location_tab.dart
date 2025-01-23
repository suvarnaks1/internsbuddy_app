import 'package:flutter/material.dart';

class LocationTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 25,
        childAspectRatio: 3 / 2.5,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  'assets/images/profile pic 2.png',
                  fit: BoxFit.cover,
                ),
                // Container(
                //   decoration: BoxDecoration(
                //     gradient: LinearGradient(
                //       colors: [
                //         // Colors.black.withOpacity(0.7),
                //         // Colors.transparent,
                //       ],
                //       begin: Alignment.bottomCenter,
                //       end: Alignment.topCenter,
                //     ),
                //   ),
                // ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.only(left: 6, right: 6),
                          decoration: BoxDecoration(
                              color: Colors.white30,
                              borderRadius: BorderRadius.circular(20),
                              border:
                                  Border.all(width: 1, color: Colors.white38)),
                          child: Text(
                            'Online',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            'Sithara Nair',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'F, 28 YRS',
                            style: TextStyle(
                              color: Color.fromARGB(255, 241, 236, 236),
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Developer, Hyderabad',
                        style: TextStyle(
                          color: Color.fromARGB(255, 241, 236, 236),
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 20,
                  child: Container(
                    padding:
                        EdgeInsets.only(left: 10, top: 3, bottom: 3, right: 3),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.white30,
                          child: Icon(
                            Icons.thumb_up,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                        SizedBox(height: 5),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.white30,
                          child: Icon(
                            Icons.message,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                        SizedBox(height: 5),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.white30,
                          child: Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}