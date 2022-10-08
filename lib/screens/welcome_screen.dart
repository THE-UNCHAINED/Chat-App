import 'package:flashchat/components/rounded_button.dart';
import 'package:flashchat/screens/login_screen.dart';
import 'package:flashchat/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? animation;

  @override
  void initState() {
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    animation =
        ColorTween(begin: Colors.grey, end: Colors.white).animate(controller!);

    controller!.forward();
    controller!.addListener(() {
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation!.value as Color,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 40,),
                Hero(
                  tag: 'logo',
                  child: Container(
                    padding: EdgeInsets.all(10),
                      height: 80,
                      child: Image.asset('assets/image/flash logo.jpg')),
                ),
                TypewriterAnimatedTextKit(
                  speed: Duration(milliseconds: 400),
                  text: [
                    "Flash CHAT",
                  ],
                  textStyle:
                      TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(height: 20,),
            Rounded_Button(
                color: Colors.blue.shade300,
                name: "Sign IN",
                onPressed: () => Navigator.pushNamed(context, LoginScreen.id)),
            Rounded_Button(
                color: Colors.blueAccent,
                name: "Register",
                onPressed: () =>
                    Navigator.pushNamed(context, RegistrationScreen.id)),
          ],
        ),
      ),
    );
  }
}
