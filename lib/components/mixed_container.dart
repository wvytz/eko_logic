import 'package:flutter/material.dart';

class MixedContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Pojemnik na odpady zmieszane',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Odpad odbierany raz w tygodniu',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.calendar_today,
            color: Colors.orange,
          ),
          Text('1 tydz.'),
        ],
      ),
    );

    Color color = Colors.orange;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.info, 'Więcej'),
          _buildButtonColumn(color, Icons.near_me, 'PSZOK'),
          _buildButtonColumn(color, Icons.call, 'Zadzwoń'),
        ],
      ),
    );
    


    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Wrzucaj resztki jedzenia. Mokry bądź zabrudzony papier,  '
            'zużyte materiały higieniczne,'
            'w tym pieluchy jednorazowe '
            'żwirek z kuwet dla zwierząt '
            'potłuczone szkło i fajans.  '
            ,
        softWrap: true,
      ),
    );

    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Image.asset(
              'assets/mixed.png',
              width: 600,
              height: 240,
              fit: BoxFit.fitHeight,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
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