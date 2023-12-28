import 'package:flutter/material.dart';
import 'package:cosmi/constants.dart';
import 'package:cosmi/home/widget/cosmetics_full.dart';
import 'package:cosmi/home/widget/popular_cosmetics.dart';

import '../screen/scanner.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            PopularCosmetics(),
            CosmeticsFull(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: mDarkBackgroundColor,
        onPressed: () {
          scanAndCheckDocument();
        },
        child: Icon(
          Icons.camera_alt_outlined,
          color: Colors.white,
        ),

      )
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: mDarkBackgroundColor,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Mycosmi',
        style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold),
      ),
      leading: IconButton(
        icon: Image.asset(
          'assets/images/menu.png',
          width: 24,
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: Image.asset(
            'assets/images/cart.png',
            width: 24,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
