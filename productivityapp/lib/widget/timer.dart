import 'package:flutter/material.dart';

class TimerWidget extends StatelessWidget {
  final int seconds;

  TimerWidget({required this.seconds});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Time: $seconds",
      style: TextStyle(fontSize: 32),
    );
  }

}