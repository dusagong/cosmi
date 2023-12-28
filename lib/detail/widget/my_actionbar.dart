import 'package:flutter/material.dart';
import 'package:cosmi/constants.dart';

class MyActionbar extends StatelessWidget {
  const MyActionbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Image.asset(
              'assets/images/menu.png',
              color: mDarkBackgroundColor,
              width: 24,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(
              'assets/images/cart.png',
              color: mDarkBackgroundColor,
              width: 24,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
