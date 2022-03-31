import 'package:brick/screens/authentication_screen.dart';
import 'package:flutter/material.dart';

class LandingPageScreen extends StatefulWidget {
  const LandingPageScreen({Key? key}) : super(key: key);

  @override
  State<LandingPageScreen> createState() => _LandingPageScreenState();
}

class _LandingPageScreenState extends State<LandingPageScreen> {
  @override
  void initState() {
    super.initState();
    _navigateHome();
  }

  void _navigateHome() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.center,
                  colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.07), BlendMode.dstATop),
                  image: const AssetImage(
                    'assets/images/brickbg1.png',
                  ),
                  fit: BoxFit.fill),
            ),
            child: Center(
              child: Container(
                padding: const EdgeInsets.only(right: 80, top: 100),
                child: const Image(
                  alignment: Alignment.center,
                  image: AssetImage('assets/images/brick.png'),
                ),
              ),
            )));
  }
}
