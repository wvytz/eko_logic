import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'contactMzo_page.dart';
import 'contactKzgrl_page.dart';
import 'waste_list.dart';
import 'containers_page.dart';
import 'pszok_mapa.dart';
import 'calendar_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('Ekologic'),
              ),
              ListTile(
                title: Text('PSZOK'),
                subtitle: Text('Sprawdź gdzie'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => MapWidget()));
                },
              ),
              ListTile(
                title: Text('Kontakt'),
                subtitle: Text('Napisz do nas - MZO'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => ContactInfoMzo()));
                },
              ),
              ListTile(
                title: Text('Kontakt'),
                subtitle: Text('Napisz do nas - KZGRL'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => ContactInfoKzgrl()));
                },
              )],
          ),
        ),
        appBar: AppBar(
          title: Text('Ekologic'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.calendar_today),
                text: 'Harmonogram',
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.recycle),
                text: 'Pojemniki',
              ),
              Tab(
                icon: Icon(Icons.launch),
                text: 'Odpady',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            CalendarPage(),
            ContainersPage(),
            WasteList(),
          ],
        ),
      ),
    );
  }
}
