import 'package:brick/sign_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          width: 400,
          height: 250,
          decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.07), BlendMode.dstATop),
                image: const AssetImage(
                  'assets/images/brickbg1.png',
                ),
                fit: BoxFit.fill),
            color: Colors.white,
          ),
          child: Stack(children: const [
            Positioned(
                left: 0,
                right: 85,
                top: 115,
                child: Image(
                  alignment: Alignment(0, -3),
                  image: AssetImage('assets/images/brick.png'),
                  fit: BoxFit.cover,
                )),
          ]),
        ),
        Container(
            height: 502,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45)),
                color: Colors.pink),
            child: MyCustomForm())
      ],
    ));
  }
}
