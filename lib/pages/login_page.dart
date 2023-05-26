import 'package:flutter/material.dart';
import 'package:hello_world/utils/constants.dart';

import '../widgets/bg_image.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login Page"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            const BgImage(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Form(
                            child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                decoration: const InputDecoration(
                                    hintText: "Enter Username",
                                    labelText: "Username"),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                  hintText: "Enter Password",
                                  labelText: "Password",
                                ),
                              )
                            ],
                          ),
                        )),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => HomePage()));

                              //Navigator.pushNamed(context, "/home");

                              Constants.prefs.setBool("loggedIn", true);
                              Navigator.pushReplacementNamed(context, "/home");
                            },
                            child: const Text("Sign In"),
                            style: ElevatedButton.styleFrom(primary: Colors.orange),
                            /*color: Colors.orange,
                            textColor: Colors.white,*/
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
