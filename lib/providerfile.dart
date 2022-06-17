import 'package:flutter/material.dart';

class CountProvider extends ChangeNotifier{
  int value = 0;
  Increment(){
    value++;

  }
}