import 'package:brick/widgets/authentication_tab_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.2), BlendMode.dstATop),
                image: const AssetImage(
                  'assets/images/workout2.png',
                ),
                fit: BoxFit.fill),
            color: Colors.white,
          )),
          const Positioned(
              left: 0,
              right: 85,
              top: 115,
              child: Image(
                alignment: Alignment(0, -3),
                image: AssetImage('assets/images/brick.png'),
                fit: BoxFit.cover,
              )),
        ],
      ),
      bottomSheet: Expanded(
        child: BottomSheet(
          backgroundColor: Colors.black.withOpacity(0.2),
          enableDrag: false,
          elevation: 10.0,
          onClosing: () {},
          builder: (context) {
            return Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0))),
              height: 490,
              child: const AuthenticationTabView(),
            );
          },
        ),
      ),
    );
  }
}
