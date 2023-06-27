import 'package:flutter/material.dart';
import 'package:yorhia_admin_app/HomePage/Home_Page.dart';
import 'package:yorhia_admin_app/Profile_page/Profile.dart';
import 'package:yorhia_admin_app/Staffs.dart/Staff_details.dart';
import 'package:yorhia_admin_app/theme/colors.dart';
import 'package:yorhia_admin_app/Order/order_page.dart';


void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: appBarColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Poppins',
      ),
      home: const OrderPage(),
    );
  }
}
