import 'package:flutter/material.dart';

class PomodoroWidget extends StatelessWidget {
  final int seconds;

  PomodoroWidget({required this.seconds});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Pomodoro: $seconds",
      style: TextStyle(fontSize: 32),
    );
  }

}