import 'package:flutter/material.dart';
import 'package:cosmi/constants.dart';
import 'package:cosmi/home/widget/popular_cosmetics_listview.dart';

class PopularCosmetics extends StatelessWidget {
  const PopularCosmetics({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: mDarkBackgroundColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Text(
              'Popular Cosmetics',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          PopularCosmeticsListview(),
        ],
      ),
    );
  }
}
