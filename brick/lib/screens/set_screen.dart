import 'package:flutter/material.dart';

class SetScreen extends StatelessWidget {
  const SetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/workout3.png'),
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
                      padding: EdgeInsets.only(top: 30),
                      child: Text('READY?',
                          style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 193, 190, 190))),
                    ),
                    const SizedBox(height: 10),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('SET.',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color.fromARGB(175, 218, 197, 7))),
                          Text('GO!',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color.fromARGB(255, 121, 19, 12))),
                        ]),
                    const SizedBox(height: 10),
                    const Text('Where you\'ll be in a few months depends on',
                        style: TextStyle(
                            color: Color.fromARGB(255, 193, 190, 190))),
                    const Text('what you do today',
                        style: TextStyle(
                            color: Color.fromARGB(255, 193, 190, 190))),
                    const SizedBox(height: 20),
                    TextButton(
                        onPressed: () {},
                        child: Container(
                            height: 50,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                color: Color.fromARGB(255, 121, 19, 12)),
                            child: const Center(
                                child: Text(
                              'Continue',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ))))
                  ]));
        },
      ),
    );
  }
}
