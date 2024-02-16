import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

class respOtp{
  int _start = 60; 
  late Timer _timer; 
  bool _timerRunning = false;
   void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) 
        {
          if (_start == 0) {
            _timerRunning = false;
            timer.cancel();
          } else {
            _start--;
          }
        });
      }
    


  void resetTimer() {
    if (_timerRunning) {
      _timer.cancel();
      _start = 60;
      startTimer();
    }
  }

}