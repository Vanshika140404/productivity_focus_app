import 'package:flutter/material.dart';
import 'package:productivityapp/models/session_type.dart';
import 'package:productivityapp/services/timer_services.dart';

class SessionViewmodel extends ChangeNotifier{
  final TimerServices _timerService;
  SessionType? sessionType;
  int seconds = 0;
  bool isRunning = false ; 

  SessionViewmodel(this._timerService);
  void setSession(SessionType type){
    sessionType = type;
    notifyListeners();
  }

  bool get isPomodoro => sessionType == SessionType.unfocused;

  void start(){
    isRunning = true;

    if (isPomodoro){
      _startPomodoro();
    }
    else{
      _startTimer();
    }
    
    notifyListeners();
  }

  void _startTimer(){
    _timerService.start((sec){
      seconds = sec;
      notifyListeners();
    });
  }

  void _startPomodoro(){
    _timerService.startPomodoro((sec){
      seconds = sec;
      notifyListeners();
    });
  }

  void stop(){
    _timerService.stop();
    isRunning = false;
    notifyListeners();
  }
}

