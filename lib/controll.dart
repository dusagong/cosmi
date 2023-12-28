import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimpleController extends GetxController {
  bool _counter = false;
  bool get counter => _counter;

  void save() {
    _counter = true;
    update();
  }

  void delete() {
    _counter = false;
    update();
  }
}
