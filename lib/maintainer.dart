import 'package:flutter/material.dart';

class maintainer extends StatelessWidget {
  const maintainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          '',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 10.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      )),
    );
  }
}
