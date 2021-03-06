import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({this.payload, this.scheduleNotification});

  final String payload;
  final Function scheduleNotification;

  @override
  State<StatefulWidget> createState() => SecondScreenState();
}

class SecondScreenState extends State<SecondScreen> {
  String _payload;
  @override
  void initState() {
    super.initState();
    _payload = widget.payload;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen with payload: ${(_payload ?? '')}'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigator.pop(context);
            widget.scheduleNotification(
                interval: 15,
                title: 'Handwash sdsdReminder',
                body: 'Handwash Reminder');
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
