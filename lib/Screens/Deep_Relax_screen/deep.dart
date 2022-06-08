import 'package:flutter/material.dart';
import 'package:flutter_auth/components/new_duration.dart';

class DeepRelaxScreen extends StatelessWidget {
  const DeepRelaxScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: Padding(
          padding: const EdgeInsets.all(90.0),
          child: Column(children: const [
            Center(
              child: Text(
                "Deep Relaxation Meditation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: Center(
                child: SizedBox(child: Duration()),
              ),
            )
          ]),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
