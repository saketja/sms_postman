import 'package:flutter/material.dart';
import 'package:sms_postman/Pages/News.dart';
import 'package:sms_postman/Pages/Portfolio.dart';
import 'package:sms_postman/Services/Colors.dart';
import 'package:sms_postman/Pages/Leaderboard.dart';
import 'package:sms_postman/Pages/home.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class HomeWrapper extends StatefulWidget {
  const HomeWrapper({Key? key}) : super(key: key);

  @override
  State<HomeWrapper> createState() => _HomeWrapperState();
}

class _HomeWrapperState extends State<HomeWrapper> {
  int activePage = 0;
  @override
  Widget build(BuildContext context) {
    print(activePage);
    return Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: Footer(),
        body: getPage());
  }

  Widget getPage() {
    return IndexedStack(
      index: activePage,
      children: <Widget>[Home(), Portfolio(), News(), Leaderboard()],
    );
  }

  // Widget Footer() {
  //   List items = [
  //     'assets/homes.svg',
  //     'assets/portfoios,svg',
  //     'assets/new.svg'
  //     'assets/leaderboards.svg'
  //     // 'assets/home.svg',
  //     // 'assets/portfolio.svg',
  //     // 'assets/news1.svg',
  //     // 'assets/board.svg',
  //     // FeatherIcons.home,
  //     // FeatherIcons.search,
  //     // FeatherIcons.bookOpen,
  //     // FeatherIcons.settings
  //   ];
  //   List titles = ['Home', 'Portfolio', 'News', 'Leaderboard'];
  //   return Container(
  //     color:MyColors.color17,
  //     height: 60, //60
  //     child: Column(
  //       children: [
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceAround,
  //           crossAxisAlignment: CrossAxisAlignment.end,
  //           children: List.generate(items.length, (index) {
  //             return Column(
  //               mainAxisAlignment: MainAxisAlignment.end,
  //               children: <Widget>[
  //                 IconButton(
  //                   onPressed: () {
  //                     setState(() {
  //                       activePage = index;
  //                     });
  //                   },
  //                   icon: SvgPicture.asset(
  //                     items[index],
  //                     // color: activePage == index ? MyColors.color18 : Colors.white,
  //                     width: 20,
  //                     height: 25,
  //                   ),
  //                 ),
  //                 Text(
  //                   titles[index],
  //                   style: TextStyle(
  //                       color: activePage == index ? MyColors.color18 : Colors.white, fontSize: 10, height: 0.2),
  //                 ),
  //               ],
  //             );
  //           }),
  //         ),
  //       ],
  //     ),
  //   );
  // }
  Widget Footer() {
    List items = [
      'assets/home1.svg',
      'assets/portfolio1.svg',
      'assets/news.svg',
      'assets/leader.svg',
    ];
    List titles = ['Home', 'Portfolio', 'News', 'Leaderboard'];
    return Container(
      color: MyColors.color17,
      height: 60,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: List.generate(items.length, (index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      setState(() {
                        activePage = index;
                      });
                    },
                    icon: SvgPicture.asset(
                      items[index],
                      color: activePage == index ? MyColors.color18 : Colors.white,
                      width: 20,
                      height: 25,
                    ),
                  ),
                  Text(
                    titles[index],
                    style: TextStyle(
                      color: activePage == index ? MyColors.color18 : Colors.white,
                      fontSize: 10,
                      height: 0.2,
                    ),
                  ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }

}
