import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class DateTimePickerWidget extends StatefulWidget {
  @override
  _DateTimePickerWidgetState createState() => _DateTimePickerWidgetState();
}

class _DateTimePickerWidgetState extends State<DateTimePickerWidget> {
  DateTime selectedDate = DateTime.now();
  DateTime selectedDate1 = DateTime.now();

  final DateFormat dateFormat = DateFormat('yyyy-MM-dd HH:mm');

  @override
  Widget build(BuildContext context) { 
    return Card(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ListTile(
          leading: Icon(FontAwesomeIcons.trashRestore),
          title: Text('Ustaw datę odbioru odpadów mieszanych:'),
          subtitle: Text(dateFormat.format(selectedDate))),
          RaisedButton(
          child: Text('Ustaw datę'),
          onPressed: () async {
            //funkcja ustalajaca date i oczekujaca oraz zapiusujaca w zmiennej SelectedDate
            final selectedDate = await _selectedDateTime(context);
            if(selectedDate == null) return;
            //print(selectedDate);

            //funkcja ustalajaca czas i zapisujaca zmiane do SelectedTime
            final selectedTime = await _selectTime(context);
            if(selectedTime == null) return;
            //print(selectedTime);

            setState(() {
             
            this.selectedDate = DateTime(
              selectedDate.year,
              selectedDate.month,
              selectedDate.day,
              selectedTime.hour,
              selectedTime.minute,
              );
            });
          },
          ),
          Divider(color: Colors.green, indent: 16.0),
          ListTile(
          leading: Icon(FontAwesomeIcons.recycle),
          title: Text('Ustaw datę odbioru odpadów segregowanych:'),
          subtitle: Text(dateFormat.format(selectedDate1))),
          RaisedButton(
          child: Text('Ustaw datę'),
          onPressed: () async {
            //funkcja ustalajaca date i oczekujaca oraz zapiusujaca w zmiennej SelectedDate
            final selectedDate1 = await _selectedDateTime(context);
            if(selectedDate1 == null) return;
            //print(selectedDate);

            //funkcja ustalajaca czas i zapisujaca zmiane do SelectedTime
            final selectedTime = await _selectTime(context);
            if(selectedTime == null) return;
            //print(selectedTime);

            setState(() {
             
            this.selectedDate1 = DateTime(
              selectedDate.year,
              selectedDate.month,
              selectedDate.day,
              selectedTime.hour,
              selectedTime.minute,
              );
            });
          },
          ),
          Divider(color: Colors.lime, indent: 16.0),
          ListTile(
              leading: Icon(FontAwesomeIcons.couch),
              title: Text('Następna zbiórka objazdowa'),
              subtitle: Text('21 wrzesień 2019'),
          ),
          
          /* Divider(color: Colors.lime, indent: 16.0),
          ListTile(
            title: Text('Harmonogram'),
            subtitle: Text('kliknij ikonę aby pobrać'),
            leading: IconButton(
              icon: Icon(FontAwesomeIcons.fileDownload),
              onPressed: _launchURL,
              ), 
            
          ),*/
        ],
      ),
    );
  }

  Future<TimeOfDay> _selectTime(BuildContext context) {
     final now = DateTime.now();
     
     return showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: now.hour, minute: now.minute)
      );
  }

  Future<DateTime> _selectedDateTime(BuildContext context) {
    return showDatePicker(
      context: context,
      initialDate: DateTime.now().add(Duration(seconds: 1)),
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
    );
  }
}

/* _launchURL() async {
  const url = 'https://kzgrl.pl/pliki/PDF/Harmonogramy/Harmonogramy%202017-2019/Leszno-nowy%2017.05.2019.pdf';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Nie mogę otworzyć $url';
  }
} */