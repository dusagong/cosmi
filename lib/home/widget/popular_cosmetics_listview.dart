import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:cosmi/constants.dart';
import 'package:cosmi/widget/rating_bar.dart';

class PopularCosmeticsListview extends StatelessWidget {
  const PopularCosmeticsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      padding: EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        itemCount: popularCosmeticsList.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => Container(
          width: 220,
          height: 310,
          margin: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage(
                popularCosmeticsList[index]['imageUrl'] as String,
              ),
            ),
            borderRadius: BorderRadius.circular(24),
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                mPrimaryColor,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  popularCosmeticsList[index]['name'] as String,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                RatingBar(
                  onRatingUpdate: (value) {},
                  selectColor: mDarkBackgroundColor,
                  maxRating: 5,
                  value:popularCosmeticsList[index]['star'] as double,
                  size: 18,
                  padding: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
