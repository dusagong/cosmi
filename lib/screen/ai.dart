import 'package:cosmi/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AIPage extends StatefulWidget {
  const AIPage({super.key});

  @override
  State<AIPage> createState() => _AIPageState();
}

class _AIPageState extends State<AIPage> {
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: mDarkBackgroundColor,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Analysis',
        style: TextStyle(
            color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {
          Get.back();
        },
      ),
      // actions: <Widget>[
      //   IconButton(
      //     icon: Image.asset(
      //       'assets/images/cart.png',
      //       width: 24,
      //     ),
      //     onPressed: () {},
      //   )
      // ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: [Image.asset('assets/UT/horse.jpeg')],
      ),
    );
  }
}
