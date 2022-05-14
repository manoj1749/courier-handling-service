// ignore_for_file: file_names, camel_case_types, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'homepage.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 5000));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 200, 0, 100),
              child: Image.asset(
                'assets/Splash.png',
                height: 400,
              ),
            ),
            const SpinKitFadingCube(
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
