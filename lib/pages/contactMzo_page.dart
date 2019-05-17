import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactInfoMzo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Miejski Zakład Oczyszczania Sp. z o.o.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'ul. Saperska 23, 64-100 Leszno',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                Divider(color: Colors.green, indent: 16.0),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(   
                    'Otwarte: Pn-Pt 7:00 - 15:00',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Color color = Colors.grey;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.phone),
            tooltip: 'Zadzwoń',
            onPressed: _launchPhone,
          ),
          _buildButtonColumn(color, 'Zadzwoń'),
          IconButton(
            icon: Icon(Icons.mail_outline),
            tooltip: 'Send Email',
            onPressed: _launchMail,
          ),
          _buildButtonColumn(color, 'Email'),
          IconButton(
            icon: Icon(Icons.open_in_browser),
            tooltip: 'Strona',
            onPressed: _launchURL,
          ),
          _buildButtonColumn(color, 'Więcej'),
        ],
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lime,
          title: Text('Skontaktuj się z nami'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/mzo1.png',
              width: 600,
              height: 240,
              fit: BoxFit.fitHeight,
            ),
            titleSection,
            buttonSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

_launchURL() async {
  const url = 'https://mzoleszno.com.pl';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Nie mogę otworzyć $url';
  }
}

_launchMail() async {
  const mail = 'mailto:poczta@mzoleszno.com.pl?';
  if (await canLaunch(mail)) {
    await launch(mail);
  } else {
    throw 'Nie mogę otworzyć $mail';
  }
}

_launchPhone() async {
  const phone = 'tel:+65 529 90 96';
  if (await canLaunch(phone)) {
    await launch(phone);
  } else {
    throw 'Nie mogę otworzyć $phone';
  }
}
