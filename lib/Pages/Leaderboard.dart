import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:sms_postman/Services/Colors.dart';
class Leaderboard extends StatefulWidget {
  const Leaderboard({super.key});

  @override
  State<Leaderboard> createState() => _LeaderboardState();
}

class _LeaderboardState extends State<Leaderboard> {
  final List<Map<String, dynamic>> leaderboardData = [
    {'rank':'4','imagePath': 'assets/ListLeaderboard.png', 'text': 'Item 1','Points':'36'},
    {'rank':'5','imagePath': 'assets/ListLeaderboard.png', 'text': 'Item 2','Points':'36'},
    {'rank':'6','imagePath': 'assets/ListLeaderboard.png', 'text': 'Item 3','Points':'36'},
    {'rank':'7','imagePath': 'assets/ListLeaderboard.png', 'text': 'Item 4','Points':'36'},
    {'rank':'8','imagePath': 'assets/ListLeaderboard.png', 'text': 'Item 5','Points':'36'},
    {'rank':'9','imagePath': 'assets/ListLeaderboard.png', 'text': 'Item 6','Points':'36'},
    {'rank':'10','imagePath': 'assets/ListLeaderboard.png', 'text': 'Item 7','Points':'36'},
  ];
  @override
  Widget build(BuildContext context) {
    double pW = MediaQuery.of(context).size.width;
    double pH = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body:Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset('assets/bg1.png'),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset('assets/bg2.png'),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              shadowColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              leading: IconButton(
                onPressed: () {
                  if (ZoomDrawer.of(context)!.isOpen()) {
                    ZoomDrawer.of(context)!.close();
                  } else {
                    ZoomDrawer.of(context)!.open();
                  }
                },
                icon: SvgPicture.asset('assets/Drawer.svg'),
              ),
              centerTitle: true,
              title: Text(
                'Leaderboard',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding:EdgeInsets.symmetric(horizontal:10,vertical: pH*0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 80),
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: MyColors.color10, width: 3),
                              ),
                              child: SvgPicture.asset(
                                'assets/rank3.svg',
                                width: 60,
                                height: 100,
                              ),
                            ),
                            Positioned(
                              top: 65,
                              right: 27,
                              child: SvgPicture.asset(
                                'assets/Frame 430.svg',
                                width: 50,
                                height: 50,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Text(
                                'Preet Vardhan',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '40 pts',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SvgPicture.asset(
                          'assets/King.svg',
                          width: 15,
                          height: 20,
                        ),
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: MyColors.color10, width: 3),
                              ),
                              child: SvgPicture.asset(
                                'assets/rank3.svg',
                                width: 60,
                                height: 100,
                              ),
                            ),
                            Positioned(
                              top: 65,
                              right: 27,
                              child: SvgPicture.asset(
                                'assets/Frame 430.svg',
                                width: 50,
                                height: 50,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Column(
                          children: [
                            Text(
                              'Preet Vardhan',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '42 pts',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: 80),
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: MyColors.color10, width: 3),
                              ),
                              child: SvgPicture.asset(
                                'assets/rank3.svg',
                                width: 60,
                                height: 100,
                              ),
                            ),
                            Positioned(
                              top: 65,
                              right: 27,
                              child: SvgPicture.asset(
                                'assets/Frame 430.svg',
                                width: 50,
                                height: 50,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Text(
                                'Preet Vardhan',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '40 pts',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics:BouncingScrollPhysics(),
                  child: Column(
                    children: leaderboardData.map((itemData) {
                      String rank = itemData['rank'];
                      String imagePath = itemData['imagePath'];
                      String text = itemData['text'];
                      String points = itemData['Points'];

                      return Container(
                        margin: EdgeInsets.only(left: 10,right: 10),
                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                            Container(
                              decoration: ShapeDecoration(
                                color: Color(0xFF221E42),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              height: 65,
                              width: double.infinity,
                              margin: EdgeInsets.only(left: 0,right: 0),
                              child: ListTile(
                                leading: Text("$rank", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white)),
                                title: Row(
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 60,
                                      child: Image.asset(imagePath),
                                    ),
                                    SizedBox(width: 16),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(text, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white)),
                                          Text("$points pts", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              // Container(
              //   height: 65,
              //   width: double.infinity,
              //   margin: EdgeInsets.only(left: 0,right: 0),
              //   decoration: ShapeDecoration(
              //     gradient: LinearGradient(
              //       begin: Alignment(1.00, 0.00),
              //       end: Alignment(-1, 0),
              //       colors: [Color(0xFF8160FF),Color(0xFFFF28DE)],
              //     ),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(12),
              //     ),
              //   ),
              //   child: ListTile(
              //     leading: Text("11", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white)),
              //     title: Row(
              //       children: [
              //         Container(
              //           width: 60,
              //           height: 60,
              //           child: Image.asset('assets/ListLeaderboard.png'),
              //         ),
              //         SizedBox(width: 16),
              //         Expanded(
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               Text('text', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white)),
              //               Text("29 pts", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white)),
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
