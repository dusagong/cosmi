// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class SimpleController extends GetxController {
//   bool _counter = false;
//   bool get counter => _counter;

//   void save() {
//     _counter = true;
//     update();
//   }

//   void delete() {
//     _counter = false;
//     update();
//   }
//   ////
//   bool _counter1 = false;
//   bool get counter1 => _counter1;

//   void save1() {
//     _counter1 = true;
//     update();
//   }

//   void delete1() {
//     _counter1 = false;
//     update();
//   }
//   ////
//   bool _counter2 = false;
//   bool get counter2 => _counter2;

//   void save2() {
//     _counter2 = true;
//     update();
//   }

//   void delete2() {
//     _counter2 = false;
//     update();
//   }
//   //
//   bool _counter3 = false;
//   bool get counter3 => _counter3;

//   void save3() {
//     _counter3 = true;
//     update();
//   }

//   void delete3() {
//     _counter3 = false;
//     update();
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimpleController extends GetxController {
  List<bool> counters = [false, false, false, false];

  bool getCounter(int index) => counters[index];

  void saveCounter(int index) {
    counters[index] = true;
    update();
  }

  void deleteCounter(int index) {
    counters[index] = false;
    update();
  }
}
