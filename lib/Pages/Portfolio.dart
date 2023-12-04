import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:sms_postman/Services/Colors.dart';

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
    return Card(
      color: MyColors.color2,
      margin: EdgeInsets.all(8),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: MyColors.color1,
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Image.network(
            imageUrl != null && imageUrl.isNotEmpty
                ? imageUrl
                : 'fallback_image_url.png', // Provide a fallback image
            width: 80,
            height: 80,
          ),
          Text(name),
          Text(price),
          Text(
            change,
            style: TextStyle(
              color: change.startsWith('+') ? Colors.green : Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    double pW = MediaQuery.of(context).size.width;
    double pH = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
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
                'Portfolio',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top:pH*0.1,
            left:0,
            right:0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [MyColors.color18, MyColors.color19],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Total Balance',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  '\$1,234.56',
                                  style: TextStyle(
                                    fontSize: 36,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 16),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                        color: MyColors.color2,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              // crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          textAlign: TextAlign.left,
                                          'Profit',
                                          style: TextStyle(color: Colors.green),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          textAlign: TextAlign.left,
                                          '\$13250.00',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top:pH*0.4,
            left:0,
            right:0,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16,0,16,0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My Stocks',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        icon: SvgPicture.asset('assets/shorts.svg'),
                        onPressed: () {
                        },
                      ),
                    ],
                  ),
                  Container(
                    height: pH*0.45,
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        final imageUrl = '/* Stock image URL */';
                        final stockName = '/* Stock name */';
                        final currentPrice = '/* Current price */';
                        final change = '/* Price change */';

                        return ExpandableCard(
                          imageUrl: imageUrl,
                          stockName: stockName,
                          currentPrice: currentPrice,
                          change: change,
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}
class ExpandableCard extends StatefulWidget {
  final String imageUrl;
  final String stockName;
  final String currentPrice;
  final String change;

  ExpandableCard({
    required this.imageUrl,
    required this.stockName,
    required this.currentPrice,
    required this.change,
  });

  @override
  _ExpandableCardState createState() => _ExpandableCardState();
}

class _ExpandableCardState extends State<ExpandableCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: MyColors.color2,
      // margin: EdgeInsets.all(8),
      // elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        tileColor: MyColors.color2,
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => FullScreenExpandableCard(
          //       imageUrl: widget.imageUrl,
          //       stockName: widget.stockName,
          //       currentPrice: widget.currentPrice,
          //       change: widget.change,
          //     ),
          //   ),
          // );
        },
        leading: CircleAvatar(
          radius: 20,
          // backgroundImage: NetworkImage(widget.imageUrl),
        ),
        title: Text(widget.stockName),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              widget.currentPrice,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            Text(
              widget.change,
              style: TextStyle(
                fontSize: 14,
                color: widget.change.startsWith('+') ? Colors.green : Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class FullScreenExpandableCard extends StatelessWidget {
//   final String imageUrl;
//   final String stockName;
//   final String currentPrice;
//   final String change;
//
//   FullScreenExpandableCard({
//     required this.imageUrl,
//     required this.stockName,
//     required this.currentPrice,
//     required this.change,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         extendBodyBehindAppBar: true,
//         body: Stack(
//           children: [
//             Full_Screen_with_Gradient(imageUrl: imageUrl, stockName: stockName, currentPrice: currentPrice, change: change)
//           ],
//         ),
//       ),
//     );
//   }
// }
// class Full_Screen_with_Gradient extends StatefulWidget {
//   final String imageUrl;
//   final String stockName;
//   final String currentPrice;
//   final String change;
//
//   Full_Screen_with_Gradient({
//     required this.imageUrl,
//     required this.stockName,
//     required this.currentPrice,
//     required this.change,
//   });
//
//
//   @override
//   State<Full_Screen_with_Gradient> createState() => _Full_Screen_with_GradientState();
// }
// class _Full_Screen_with_GradientState extends State<Full_Screen_with_Gradient> {
//   @override
//   bool isStarPressed = false;
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.white),
//           onPressed: () {
//           //   Navigator.push(context,
//           //       MaterialPageRoute(builder: (context) => PortfolioScreen()));
//           },
//         ),
//         title: Text(
//           widget.stockName,
//           style: TextStyle(color: Colors.white),
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(!isStarPressed ? Icons.star_border : Icons.star),
//             onPressed: () {
//               setState(() {
//                 isStarPressed = !isStarPressed;
//               });
//             },
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: 20,),
//             // CandleChart(),
//             SizedBox(height: 20,),
//             Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     RowContainer(title: 'Daily Change', value: 'Value 1'),
//                     RowContainer(title: 'Highest Price', value: 'Value 2'),
//                     RowContainer(title: 'Lowest Price', value: 'Value 3'),
//                   ],
//                 ),
//                 SizedBox(height: 10,),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     ElevatedButton(
//                         onPressed: () {},
//                         style: ButtonStyle(
//                             elevation: MaterialStatePropertyAll<double?>(5.0),
//                             backgroundColor:
//                             MaterialStatePropertyAll<Color>(Color(0xFFFB8B88)),
//                             shape: MaterialStateProperty.all<OutlinedBorder>(
//                                 RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10.0),
//                                 ))),
//                         child: Text(
//                           'Sell',
//                           style: TextStyle(color: Color(0xff841C22)),
//                         )),
//                     ElevatedButton(
//                         onPressed: () {},
//                         style: ButtonStyle(
//                           elevation: MaterialStatePropertyAll<double?>(5.0),
//                           backgroundColor:
//                           MaterialStatePropertyAll<Color>(Color(0xFF99CA73)),
//                           shape: MaterialStateProperty.all<OutlinedBorder>(
//                             RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                           ),
//                         ),
//                         child: Text(
//                           'Buy',
//                           style: TextStyle(color: Color(0xFF37592F)),
//                         )),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class RowContainer extends StatelessWidget {
//   final String title;
//   final String value;
//
//   RowContainer({required this.title, required this.value});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(8.0),
//       margin: EdgeInsets.all(4.0),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.transparent),
//         borderRadius: BorderRadius.circular(8.0),
//       ),
//       child: Column(
//         // mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             title,
//             style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//           ),
//           SizedBox(height: 8.0),
//           Text(
//             value,
//             style: TextStyle(
//                 fontWeight: FontWeight.bold, color: Color(0xffC2D885)),
//           ),
//         ],
//       ),
//     );
//   }
// }