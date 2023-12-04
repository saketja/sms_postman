import 'package:flutter/material.dart';
import 'package:sms_postman/Services/Colors.dart';
import 'package:sms_postman/Pages/drawer_screen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: MyColors.color11),
          useMaterial3: true,
        ),
        home: const DrawerScreen(),
      );
    }
    );
  }
}
