import 'package:flutter/material.dart';
import 'date_picker_widget.dart';


class CalendarPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Center(child: DateTimePickerWidget()),
      ],
    ),
  );
  }
