import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'homepage.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 5000));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 200, 0, 100),
              child: Image.asset(
                'images/Splash.png',
                height: 400,
              ),
            ),
            SpinKitFadingCube(
              color: Colors.lightBlue,
              size: 30.0,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
