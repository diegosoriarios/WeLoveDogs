import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main.dart';

class Splash extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
 
class _SplashScreenState extends State<Splash> {
 
  /// NEW CODE.
  @override
  void initState() {
    super.initState();
 
    /// Initialize data, then navigator to Home screen.
    initData().then((value) {
      navigateToHomeScreen();
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
        child: Center(
          child: Container(
          width: 150,
          height: 150,
          child: Image.asset("img/splash.png"),
        ),
      )
    );
  }
 
  /// NEW CODE.
  /// We can do long run task here.
  /// In this example, we just simply delay 3 seconds, nothing complicated.
  Future initData() async {
    await Future.delayed(Duration(seconds: 3));
  }
 
  /// NEW CODE.
  /// Navigate to Home screen.
  void navigateToHomeScreen() {
    /// Push home screen and replace (close/exit) splash screen.
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage(title: 'We Rate Dogs')));
  }
}