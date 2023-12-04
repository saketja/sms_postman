import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sms_postman/Pages/Portfolio.dart';
import '../Services/Colors.dart';
import 'Loading.dart';
import 'package:spacer/spacer.dart';
import 'package:sizer/sizer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    double pW = MediaQuery.of(context).size.width;
    double pH = MediaQuery.of(context).size.height;
    bool load = false;
    Widget _buildContent() {
      return Column(
        children: [
          Container(
            height: 20.h,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: MyColors.color2,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 4.w,
                          // backgroundImage: NetworkImage(imageUrl),
                        ),
                        SizedBox(width: 2.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'stockName',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 1.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'currentPrice',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                // Text(
                                //   'change',
                                //   style: TextStyle(
                                //     fontSize: 14,
                                //     // color: change.startsWith('+') ? Colors.green : Colors.red,
                                //   ),
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:2.h),
                  Container(
                    color: MyColors.color2,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 4.w,
                          // backgroundImage: NetworkImage(imageUrl),
                        ),
                        SizedBox(width: 2.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'stockName',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 1.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'currentPrice',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                // Text(
                                //   'change',
                                //   style: TextStyle(
                                //     fontSize: 14,
                                //     // color: change.startsWith('+') ? Colors.green : Colors.red,
                                //   ),
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:2.h),
                  Container(
                    color: MyColors.color2,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 4.w,
                          // backgroundImage: NetworkImage(imageUrl),
                        ),
                        SizedBox(width: 2.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'stockName',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 1.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'currentPrice',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                // Text(
                                //   'change',
                                //   style: TextStyle(
                                //     fontSize: 14,
                                //     // color: change.startsWith('+') ? Colors.green : Colors.red,
                                //   ),
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:2.h),
                  Container(
                    color: MyColors.color2,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 4.w,
                          // backgroundImage: NetworkImage(imageUrl),
                        ),
                        SizedBox(width: 2.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'stockName',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 1.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'currentPrice',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                // Text(
                                //   'change',
                                //   style: TextStyle(
                                //     fontSize: 14,
                                //     // color: change.startsWith('+') ? Colors.green : Colors.red,
                                //   ),
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:2.h),
                  Container(
                    color: MyColors.color2,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 4.w,
                          // backgroundImage: NetworkImage(imageUrl),
                        ),
                        SizedBox(width: 2.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'stockName',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 1.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'currentPrice',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                // Text(
                                //   'change',
                                //   style: TextStyle(
                                //     fontSize: 14,
                                //     // color: change.startsWith('+') ? Colors.green : Colors.red,
                                //   ),
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:2.h),
                  Container(
                    color: MyColors.color2,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 4.w,
                          // backgroundImage: NetworkImage(imageUrl),
                        ),
                        SizedBox(width: 2.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'stockName',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 1.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'currentPrice',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                // Text(
                                //   'change',
                                //   style: TextStyle(
                                //     fontSize: 14,
                                //     // color: change.startsWith('+') ? Colors.green : Colors.red,
                                //   ),
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }
    return (load)
        ? Loading()
        : Scaffold(
            backgroundColor: Colors.black,
            body: Container(
              height: pH,
              width: pW,
              child: Stack(
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
                        'Home',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: pH * 0.1,
                        ),
                        Container(
                          width: pW * 0.93,
                          decoration: BoxDecoration(
                              color: Color(0xFF393A65),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Total Balance',
                                  style: GoogleFonts.redHatText(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  '\$8,657.860',
                                  style: TextStyle(
                                    fontSize: 36,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 16),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(40),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 1,
                                    ),
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "today's earning",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Container(
                                            color: MyColors.color12,
                                            child: Row(
                                              children: [
                                                SvgPicture.asset(
                                                  'assets/profit.svg',
                                                ),
                                                Text(
                                                  "7.64%",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: MyColors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: pH * 0.03,
                        ),
                        Container(
                          width: pW * 0.93,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.transparent,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                color: Colors.transparent,
                                child: TextButton(
                                  onPressed: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) => Crypto_with_Gradient()));
                                  },
                                  child: Image.asset(
                                    'assets/crypto.png',
                                  ),
                                ),
                              ),
                              Container(
                                color: Colors.transparent,
                                child: TextButton(
                                    onPressed: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) => Stocks_with_Gradient()));
                                    },
                                    child: Image.asset(
                                        'assets/ExploreStocks.png')),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 8),
                          width: double.infinity,
                          // height: pH * 0.45,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Trending Stocks',
                                  style: GoogleFonts.redHatText(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: pH * 0.17,
                                width: double.infinity,
                                color: Colors.transparent,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    StockCard(
                                      imageUrl: 'assets/share3.svg',
                                      name: 'Stock 1',
                                      price: '\$100.00',
                                      change: '+\$10.00',
                                    ),
                                    StockCard(
                                      imageUrl: 'assets/share3.svg',
                                      name: 'Stock 2',
                                      price: '\$90.00',
                                      change: '-\$5.00',
                                    ),
                                    StockCard(
                                      imageUrl: 'assets/share3.svg',
                                      name: 'Stock 3',
                                      price: '\$110.00',
                                      change: '+\$15.00',
                                    ),
                                    StockCard(
                                      imageUrl: 'assets/share3.svg',
                                      name: 'Stock 4',
                                      price: '\$110.00',
                                      change: '-\$15.00',
                                    ),
                                    StockCard(
                                      imageUrl: 'assets/share3.svg',
                                      name: 'Stock 5',
                                      price: '\$110.00',
                                      change: '+\$15.00',
                                    ),
                                    StockCard(
                                      imageUrl: 'assets/share3.svg',
                                      name: 'Stock 6',
                                      price: '\$110.00',
                                      change: '\$0.00',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Watchlist',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                icon: SvgPicture.asset('assets/shorts.svg'),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: _buildContent(), // Call the content method
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}

class StockCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;
  final String change;

  StockCard({
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.change,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: MyColors.color11,
        borderRadius: BorderRadius.circular(10),
        // border: Border.all(
        //   color: MyColors.color1,
        //   width: 1,
        // ),
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  imageUrl,
                  width: 40,
                  height: 40,
                ),
                SizedBox(width: 8),
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.center,
              child: Text(
                price,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.center,
              child: Text(
                change,
                style: TextStyle(
                  color: change.startsWith('+')
                      ? Colors.green
                      : change.startsWith('-')
                          ? Colors.red
                          : Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
