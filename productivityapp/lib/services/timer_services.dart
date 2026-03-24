import 'dart:async';

class TimerServices {
  Timer? _timer;
  int _seconds = 0;

  void start(Function(int) onTick){
    _seconds = 0;
    _timer = Timer.periodic(const Duration(seconds: 1), (_){
      _seconds++;
      onTick(_seconds);
    });
  }

  void startPomodoro(Function(int) onTick){
    bool isWorkPhase = true;
    _seconds = 25 * 60;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer){
      _seconds--;
      
      if (_seconds <= 0){
        if (isWorkPhase){
          isWorkPhase = false;
          _seconds = 5 * 60;
        }
        else{
          timer.cancel();
          return;
        }
      } 
      
      onTick(_seconds);


    });
  }
  void stop(){
    _timer?.cancel();
  }
}