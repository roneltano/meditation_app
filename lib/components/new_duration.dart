import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:time_pickerr/time_pickerr.dart';

class Duration extends StatefulWidget {
  const Duration({Key key}) : super(key: key);

  @override
  State<Duration> createState() => _DurationState();
}

buildCustomTimer(BuildContext context) {
  return CustomHourPicker(
    elevation: 2,
    onPositivePressed: (context, time) {
      print('onPositive');
    },
    onNegativePressed: (context) {
      print('onNegative');
    },
  );
}

class _DurationState extends State<Duration> {
  buildCustomTimer(BuildContext context) {
    return CustomHourPicker(
      elevation: 2,
      onPositivePressed: (context, time) {
        print('onPositive');
      },
      onNegativePressed: (context) {
        print('onNegative');
      },
    );
  }

  Future openTimePicker() => showDialog(
        context: context,
        builder: (BuildContext context) {
          return buildCustomTimer(context);
        },
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 77,
          width: 300,
          child: InkWell(
              child: (Container(
                decoration: const BoxDecoration(
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
              duration: 10,
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
}
