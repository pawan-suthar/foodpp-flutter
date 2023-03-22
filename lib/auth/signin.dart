import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/main.png"),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              // color: Colors.blue,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Unlock more features by signing in",
                    style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                  ),
                  Text(
                    "FlutterFresh",
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                        decorationThickness: 10.0,
                        shadows: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.green.shade800,
                            offset: Offset(3, 3),
                          ),
                        ]),
                  ),
                  Column(
                    children: [
                      SignInButton(
                        Buttons.Google,
                        text: ("Sign in with Google"),
                        onPressed: () {},
                      ),
                      SignInButton(
                        Buttons.Apple,
                        text: ("Sign in with Apple"),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "By signin you are agreeing our",
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                      Text(
                        "Terms   and privacy policy",
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
