import 'package:flutter/material.dart';
import 'package:flutter_course/components/yellow_container.dart';
import 'package:flutter_course/components/blue_container.dart';
import 'package:flutter_course/components/green_container.dart';
import 'package:flutter_course/components/white_container.dart';
import 'package:flutter_course/components/mixed_container.dart';
import 'package:flutter_course/components/pszok_container.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContainersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: Center(
          child: new ListView(
            children: <Widget>[
              Card(
                color: Colors.yellow.shade300,
                child: ListTile(
                  title: Text('Pojemnik żółty'),
                  trailing: Icon(FontAwesomeIcons.recycle),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                YellowContainerPage()));
                  },
                ),
              ),
              Card(
                color: Colors.blue.shade300,
                child: ListTile(
                  title: Text('Pojemnik niebieski'),
                  trailing: Icon(FontAwesomeIcons.recycle),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                BlueContainerPage()));
                  },
                ),
              ),
              Card(
                color: Colors.green.shade300,
                child: ListTile(
                  title: Text('Pojemnik zielony'),
                  trailing: Icon(FontAwesomeIcons.recycle),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                GreenContainerPage()));
                  },
                ),
              ),
              Card(
                color: Colors.white,
                child: ListTile(
                  title: Text('Pojemnik biały'),
                  trailing: Icon(FontAwesomeIcons.recycle),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                WhiteContainerPage()));
                  },
                ),
              ),
              Card(
                color: Colors.brown.shade300,
                child: ListTile(
                  title: Text('Pojemnik na odpady zmieszane'),
                  trailing: Icon(FontAwesomeIcons.recycle),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                MixedContainerPage()));
                  },
                ),
              ),
              Card(
                color: Colors.orange.shade300,
                child: ListTile(
                  title: Text('PSZOK'),
                  trailing: Icon(FontAwesomeIcons.recycle),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                PSZOKContainerPage()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
