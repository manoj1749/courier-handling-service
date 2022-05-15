import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/src/foundation/key.dart';

import 'maintainer.dart';

class logPage extends StatefulWidget {
  const logPage({Key? key}) : super(key: key);

  @override
  State<logPage> createState() => _logPageState();
}

class _logPageState extends State<logPage> {
  List _items = [];
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/data.json');
    final data = await json.decode(response);
    print(data);
    setState(() {
      _items = data["items"];
      print(_items);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Package Details',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22.0,
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
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(1),
        child: ListView(children: <Widget>[
          IconButton(
            onPressed: readJson,
            icon: Icon(Icons.refresh),
          ),
          Container(child: ListView(children: <Widget>[Text('Data')])),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Colors.black, width: 10.0),
                ),
                labelText: 'Password',
              ),
            ),
          )
        ]),
      ),
    );
  }
}
