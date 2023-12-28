import 'package:cosmi/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Wish extends StatefulWidget {
  const Wish({super.key});

  @override
  State<Wish> createState() => _WishState();
}

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: mDarkBackgroundColor,
    elevation: 0,
    centerTitle: true,
    title: Text(
      'Mycosmi',
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

class _WishState extends State<Wish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Row(
              children: [
                Image.asset(
                  'assets/UT/horse.jpeg',
                  height: 140,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('data'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: Text('HI'),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
