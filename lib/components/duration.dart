// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:time_pickerr/time_pickerr.dart';

class Duration extends StatefulWidget {
  const Duration({
    Key key,
  }) : super(key: key);

  @override
  State<Duration> createState() => _DurationState();
}

class _DurationState extends State<Duration> {
  int seconds;
  int hour;
  int minute;
  int _duration;
  final CountDownController _controller = CountDownController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 77,
          width: 500,
          child: InkWell(
              child: (Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    color: Colors.green),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: SizedBox(
                        width: 90,
                        child: Text(
                          "Duration of meditation",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "30:00",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              )),
              onTap: () {
                openTimePicker();
              }),
        ),
        Column(
          children: [
            CircularCountDownTimer(
              autoStart: false,
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 2,
              fillColor: Colors.green[500],
              duration: _duration,
              ringColor: Colors.white,
              backgroundColor: Colors.white,
            ),
            TextButton(
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green)),
              onPressed: () {
                CountDownController().start();
              },
              child: Text('Start'),
            )
          ],
        )
      ],
    );
  }

  Future openTimePicker() => showDialog(
        context: context,
        builder: (BuildContext context) {
          return buildCustomTimer(context);
        },
      );

  buildCustomTimer(BuildContext context) {
    return CustomHourPicker(
      elevation: 2,
      onPositivePressed: (context, time) {
        // hm.setHour = time.toString();
        hour = time.hour.toInt();
        minute = time.minute.toInt();
        print(hour);
        print(minute);
      },
      onNegativePressed: (context) {
        print('onNegative');
      },
    );
  }
}

Function convertToSeconds() => (int hour, int mins) {
      var dt = DateTime.now();
      int newHour = hour - dt.hour;
      int newMins = mins - dt.minute;
      int x = newHour * 3600;
      int y = newMins * 60;
      int seconds = x + y;
      _DurationState()._duration = seconds;
      return seconds;
    };
