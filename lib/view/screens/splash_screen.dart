import 'package:delivery/view/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashCreen extends StatefulWidget {
  const SplashCreen({Key? key}) : super(key: key);

  @override
  State<SplashCreen> createState() => _SplashCreenState();
}

class _SplashCreenState extends State<SplashCreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: loginScreen(),
      duration: 8000,
      imageSize: 130,
      imageSrc: 'assets/images/burguer.png',
      text: "Carregando...",
      textType: TextType.ColorizeAnimationText,
      textStyle: const TextStyle(
        fontSize: 40.0,
      ),
      colors: const [
        Colors.purple,
        Colors.blue,
        Colors.yellow,
        Colors.red,
      ],
      backgroundColor: Colors.white,
    );
  }
}
