import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Colors.dart';
class Navbar extends StatelessWidget {
  const Navbar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF393A65),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(width: 30,),
                      SvgPicture.asset(
                        'assets/image.svg',
                        width: 35,
                        height: 20,
                      ),
                      SizedBox(width: 20,),
                      Text(
                        'Pratyush Tiwari',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      SizedBox(width: 30,),
                      SvgPicture.asset(
                        'assets/account.svg',
                        width: 35,
                        height: 20,
                      ),
                      SizedBox(width: 30,),
                      TextButton(
                        onPressed:(){

                        },
                        child:Text(
                          'Account',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 120,
                      child: Divider(
                        color: Color(0xFF515151),
                        thickness: 2,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 30,),
                      SvgPicture.asset(
                        'assets/Deposits.svg',
                        width: 35,
                        height: 20,
                      ),
                      SizedBox(width: 20,),
                      TextButton(
                        onPressed:(){

                        },
                        child:Text(
                          'Deposits & transfers',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 120,
                      child: Divider(
                        color: Color(0xFF515151),
                        thickness: 2,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 30,),
                      SvgPicture.asset(
                        'assets/IPO.svg',
                        width: 35,
                        height: 20,
                      ),
                      SizedBox(width: 30,),
                      TextButton(
                        onPressed:(){

                        },
                        child:Text(
                          'IPO',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 120,
                      child: Divider(
                        color: Color(0xFF515151),
                        thickness: 2,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 30,),
                      SvgPicture.asset(
                        'assets/Settings.svg',
                        width: 35,
                        height: 20,
                      ),
                      SizedBox(width: 30,),
                      TextButton(
                        onPressed:(){

                        },
                        child:Text(
                          'Settings',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 120,
                      child: Divider(
                        color: Color(0xFF515151),
                        thickness: 2,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 30,),
                      SvgPicture.asset(
                        'assets/Developrs.svg',
                        width: 35,
                        height: 20,
                      ),
                      SizedBox(width: 20,),
                      TextButton(
                        onPressed:(){

                        },
                        child:Text(
                          'Developers',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 120,
                      child: Divider(
                        color: Color(0xFF515151),
                        thickness: 2,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 30,),
                      SvgPicture.asset(
                        'assets/LogOut.svg',
                        width: 35,
                        height: 20,
                      ),
                      SizedBox(width: 30,),
                      TextButton(
                        onPressed:(){

                        },
                        child:Text(
                          'Log Out',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 30,),
                      SvgPicture.asset(
                        'assets/Terms.svg',
                        width: 35,
                        height: 20,
                      ),
                      SizedBox(width: 30,),
                      TextButton(
                        onPressed:(){

                        },
                        child:Text(
                          'Terms & conditions',
                          style: TextStyle(color: Color((0xFF7351F4))),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 30,),
                      SvgPicture.asset(
                        'assets/Terms.svg',
                        width: 35,
                        height: 20,
                      ),
                      SizedBox(width: 30,),
                      TextButton(
                        onPressed:(){

                        },
                        child:Text(
                          'Disclaimer',
                          style: TextStyle(color: Color(0xFF7351F4)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
