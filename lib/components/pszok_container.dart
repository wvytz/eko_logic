import 'package:flutter/material.dart';

class PSZOKContainerPage extends StatelessWidget {
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
                    'Punkt Selektywnej Zbiórki Odpadów Komunalnych',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Otwarte Pn-Pt 7:00-17:00',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
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
        'Zastanawiałeś się co zrobić z meblami, które są już Ci niepotrzebne, resztkami farby, która została po malowaniu Twojego pokoju, zepsutym telewizorem, komputerem, ulubioną konsolą do gry, przepalonymi żarówkami energooszczędnymi, czy oponami, które zalegają w kącie przydomowego warsztatu? Na pewno nie można ich wyrzucić do pojemnika na odpady zmieszane, bo albo się w nim nie zmieszczą, albo należą do grupy odpadów niebezpiecznych, które stanowią zagrożenie dla środowiska.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Image.asset(
              'assets/pszok.png',
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
