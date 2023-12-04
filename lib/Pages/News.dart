import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class NewsTile extends StatelessWidget {
  final String newsType;
  final String newsDescription;
  final String timeSincePosted;

  NewsTile({required this.newsType, required this.newsDescription, required this.timeSincePosted});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16,0,16,0),
      decoration: BoxDecoration(
        color: Colors.transparent,
        //borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            newsType,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 8),
          Container(
            child: Text(
              newsDescription,
              style: TextStyle(fontSize: 20,color: Colors.white),
            ),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Text(
                timeSincePosted,
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
              Spacer(),
              IconButton(
                onPressed: () {
                  // Handle button press here
                },
                icon: Icon(Icons.chevron_right,size: 35,color: Colors.white,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
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
                'News',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(height:pH*0.1),
              Container(
                padding: EdgeInsets.only(left:15),
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Headlines of the Day", style: TextStyle(fontSize: 30,color: Colors.white)),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return NewsTile(
                      newsType: 'Business',
                      newsDescription: 'Market rejoices Fed decision;''\n''nifty is back above 19000;'
                          '\n''Sensex gains 490 ...',
                      timeSincePosted: '2 hours ago',
                    );
                  },
                ),
              ),
              // Container(
              //   color: Colors.black,
              //   alignment: Alignment.center,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       TextButton(
              //         onPressed: () {},
              //         child: Text("Latest News >", style: TextStyle(fontSize: 20,color: Colors.white)),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
