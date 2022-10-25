import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  TimeOfDay x = const TimeOfDay(hour: 8, minute: 30);

  void _showtimepicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      if (value == null) return;
      setState(() {
        x = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: MaterialButton(
              onPressed: _showtimepicker,
              color: Colors.blueGrey,
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'PICK TIME',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Text(
              x.toString(),
              style: const TextStyle(
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
