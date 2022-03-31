import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  LoginFormState createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginForm> {
  bool isPasswordHidden = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Column(children: [
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextFormField(
                      cursorColor: const Color.fromARGB(255, 121, 19, 12),
                      style: const TextStyle(
                          color: Color.fromARGB(255, 121, 19, 12)),
                      decoration: InputDecoration(
                          labelStyle: const TextStyle(
                              color: Color.fromARGB(255, 121, 19, 12)),
                          labelText: 'Username',
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 2,
                                color: Color.fromARGB(58, 143, 143, 143)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 121, 19, 12)),
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextFormField(
                      obscureText: isPasswordHidden,
                      cursorColor: const Color.fromARGB(255, 121, 19, 12),
                      style: const TextStyle(
                          color: Color.fromARGB(255, 121, 19, 12)),
                      decoration: InputDecoration(
                          suffixIcon: InkWell(
                              onTap: _togglePasswordView,
                              child: isPasswordHidden == true
                                  ? const Icon(Icons.visibility,
                                      color: Color.fromARGB(235, 160, 157, 157))
                                  : const Icon(Icons.visibility_off,
                                      color:
                                          Color.fromARGB(235, 160, 157, 157))),
                          labelStyle: const TextStyle(
                              color: Color.fromARGB(255, 121, 19, 12)),
                          labelText: 'Password',
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 2,
                                color: Color.fromARGB(58, 143, 143, 143)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 121, 19, 12)),
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'Forget Password',
                        style: TextStyle(
                            color: Color.fromARGB(235, 160, 157, 157)),
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Container(
                          height: 50,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Color.fromARGB(235, 180, 179, 179)),
                          child: const Center(
                              child: Text(
                            'Login',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ))))
                ],
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: const [
                Expanded(
                    child: Divider(
                        thickness: 2,
                        color: Color.fromARGB(235, 210, 208, 208))),
                Padding(
                  padding: EdgeInsets.only(right: 8, left: 8),
                  child: Text('Or sign in with',
                      style:
                          TextStyle(color: Color.fromARGB(235, 206, 187, 187))),
                ),
                Expanded(
                    child: Divider(
                        thickness: 2,
                        color: Color.fromARGB(235, 206, 187, 187)))
              ],
            ),
          ]),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 45,
              child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  child: const Image(
                      height: 33,
                      image: AssetImage('assets/images/googlelogo.png'),
                      fit: BoxFit.contain)),
            ),
            const SizedBox(
              width: 40,
            ),
            SizedBox(
              height: 45,
              child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  child: const Image(
                      height: 33,
                      image: AssetImage('assets/images/applelogo.png'),
                      fit: BoxFit.contain)),
            ),
            const SizedBox(
              width: 40,
            ),
            SizedBox(
              height: 45,
              child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  child: const Image(
                      height: 33,
                      image: AssetImage('assets/images/facebook.png'),
                      fit: BoxFit.contain)),
            )
          ],
        ),
      ],
    );
  }

  void _togglePasswordView() {
    setState(() {
      isPasswordHidden = !isPasswordHidden;
    });
  }
}
