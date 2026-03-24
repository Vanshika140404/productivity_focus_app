import 'package:flutter/material.dart';
import 'package:productivityapp/viewmodel/session_viewmodel.dart';
import 'package:productivityapp/widget/pomodoro.dart';
import 'package:productivityapp/widget/timer.dart';
import 'package:provider/provider.dart';

class SessionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<SessionViewmodel>(
      builder: (context, vm, child) {
        return Scaffold(
          appBar: AppBar(title: Text("Sesssion")),

          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              vm.isPomodoro? PomodoroWidget(seconds: vm.seconds) : TimerWidget(seconds: vm.seconds),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: vm.isRunning? vm.stop : vm.start,
                child: Text(vm.isRunning? "Stop" : "Start"),
              )
            ],
          ),
        );

      }
    );
  }
  
 

}