import 'package:flutter/material.dart';

class BlueContainerPage extends StatelessWidget {
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
                    'Pojemnik niebieski na makulaturę',
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
        'Przed wrzuceniem zgniataj papierowe opakowania oraz kartony. '
        'Dzięki temu zajmują mniej miejsca w pojemniku'
        'Dostosuj wielkośc pojemnika do swoich potrzeb - '
        'odpady niemieszczące się w pojemniku,  '
        'dokładane w workach postawionych obok  '
        'nie zostaną odebrane.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      home: Scaffold(
        //body section
        body: ListView(
          children: [
            Image.asset(
              'assets/blue.png',
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
