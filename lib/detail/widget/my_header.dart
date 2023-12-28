import 'package:flutter/material.dart';
import 'package:cosmi/constants.dart';
import 'package:cosmi/detail/widget/my_actionbar.dart';

class MyHeader extends StatelessWidget {
  const MyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      height: 320,
      decoration: BoxDecoration(
        color: mCardBackgroundColor,
        image: DecorationImage(
          image: AssetImage('assets/images/product_full_detail.png'),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: MyActionbar(),
    );
  }
}

