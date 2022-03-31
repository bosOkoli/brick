import 'package:brick/login.dart';
import 'package:brick/widgets/signup.dart';
import 'package:flutter/material.dart';

class AuthenticationTabView extends StatefulWidget {
  const AuthenticationTabView({Key? key}) : super(key: key);

  @override
  State<AuthenticationTabView> createState() => _AuthenticationTabViewState();
}

class _AuthenticationTabViewState extends State<AuthenticationTabView>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  int activeIndex = 0;

  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    controller.addListener(() {
      if (controller.indexIsChanging) {
        setState(() {
          activeIndex = controller.index;
        });
      }
    });

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          TabBar(
              unselectedLabelColor: const Color.fromARGB(255, 121, 19, 12),
              controller: controller,
              labelColor: const Color.fromARGB(255, 121, 19, 12),
              labelStyle: const TextStyle(
                  color: Color.fromARGB(255, 121, 19, 12),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
              unselectedLabelStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w300),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: const Color.fromARGB(255, 121, 19, 12),
              indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(
                      width: 3.0, color: Color.fromARGB(255, 121, 19, 12)),
                  insets: EdgeInsets.only(bottom: 6)),
              // isScrollable: true,
              tabs: [
                Tab(
                  child: Text(
                    'Log In',
                    style: TextStyle(
                        fontSize: 15,
                        color: activeIndex == 0
                            ? const Color.fromARGB(255, 121, 19, 12)
                            : Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    'Sign UP',
                    style: TextStyle(
                        fontSize: 15,
                        color: activeIndex == 1
                            ? const Color.fromARGB(255, 121, 19, 12)
                            : Colors.black),
                  ),
                )
              ]),
          Padding(
            padding: const EdgeInsets.only(),
            child: SizedBox(
              height: 315,
              child: TabBarView(
                  controller: controller,
                  children: const [LoginForm(), SignUpForm()]),
              //),
            ),
          )
        ],
      ),
    );
  }
}
