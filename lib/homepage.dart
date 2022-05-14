import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'maintainer.dart';
import 'delivery.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  openURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'COURIER MANAGEMENT SYSTEM',
          style: TextStyle(
            fontSize: 21.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 10.0,
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  children: <Widget>[
                    Container(
                      // A fixed-height child.
                      color: Colors.white, // Yellow
                      height: 200.0,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(15.0),
                      child: Column(children: const <Widget>[
                        Padding(
                            padding: EdgeInsets.only(top: 12, bottom: 12),
                            child: FaIcon(
                              FontAwesomeIcons.box,
                              color: Colors.black,
                              size: 50,
                            )),
                      ]),
                    ),
                    Expanded(
                      // A flexible child that will grow to fit the viewport but
                      // still be at least as big as necessary to fit its contents.
                      child: Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40.0),
                              bottomRight: Radius.circular(0),
                              topLeft: Radius.circular(40.0),
                              bottomLeft: Radius.circular(0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                offset: Offset(
                                  5.0,
                                  5.0,
                                ),
                                blurRadius: 0,
                                spreadRadius: 0,
                              ),
                            ],
                            color: Colors.white),
                        // Red
                        height: 120.0,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                            alignment: Alignment.topLeft,
                                            padding: const EdgeInsets.all(15.0),
                                            child: const Text(
                                              '',
                                              style: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )))
                                  ]),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.only(
                                                left: 5.0,
                                                right: 5.0,
                                                bottom: 20),
                                            child: Column(children: <Widget>[
                                              InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const maintainer()),
                                                  );
                                                },
                                                child: const CircleAvatar(
                                                  radius: 70.0,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  backgroundImage: AssetImage(
                                                      'assets/2.png'),
                                                ),
                                              ),
                                              const Text(
                                                "Maintainer Login",
                                                style: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ]))),
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.only(
                                                left: 5.0,
                                                right: 5.0,
                                                bottom: 20),
                                            child: Column(children: <Widget>[
                                              InkWell(
                                                onTap: () {
                                                  const url =
                                                      'https://forms.gle/iR3WmhxRYJV1hT7N7';
                                                  openURL(url);
                                                },
                                                child: const CircleAvatar(
                                                  radius: 70.0,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  backgroundImage: AssetImage(
                                                      'assets/3.png'),
                                                ),
                                              ),
                                              const Text(
                                                "New Delivery",
                                                style: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ]))),
                                  ]),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.only(
                                                left: 5.0,
                                                right: 5.0,
                                                bottom: 20),
                                            child: Column(children: <Widget>[
                                              InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const delivery()),
                                                  );
                                                },
                                                child: const CircleAvatar(
                                                  radius: 70.0,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  backgroundImage: AssetImage(
                                                      'assets/4.png'),
                                                ),
                                              ),
                                              const Text(
                                                "Check Delivery",
                                                style: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ]))),
                                  ])
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
