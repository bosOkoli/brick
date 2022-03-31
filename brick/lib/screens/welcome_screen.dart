import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/workout1.png'),
              fit: BoxFit.fill),
        ),
      ),
      bottomSheet: BottomSheet(
        backgroundColor: Colors.black.withOpacity(0.6),
        enableDrag: false,
        elevation: 10.0,
        onClosing: () {},
        builder: (context) {
          return Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0))),
              height: 250,
              width: 400,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text('Welcome',
                          style: TextStyle(
                              fontSize: 40,
                              color: Color.fromARGB(175, 218, 197, 7))),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'You\'ve taken the first step towards',
                    ),
                    const Text('your fitness journey'),
                    const SizedBox(height: 50),
                    FloatingActionButton(
                        backgroundColor: const Color.fromARGB(255, 121, 19, 12),
                        onPressed: () {},
                        child: const Icon(Icons.arrow_forward)),
                  ]));
        },
      ),
    );
  }
}
