import 'package:delivery/view/screens/home_page.dart';
import 'package:delivery/view/screens/login_screen.dart';
import 'package:delivery/view/screens/productInformation_page.dart';
import 'package:delivery/view/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Delivery',
      debugShowCheckedModeBanner: false,
      home: const SplashCreen(),
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.arimoTextTheme(Theme.of(context).textTheme),
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle:
              TextStyle(color: Colors.black, fontStyle: FontStyle.italic),
          centerTitle: true,
        ),
      ),
    );
  }
}
