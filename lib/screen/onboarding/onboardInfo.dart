import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardInfo extends StatelessWidget {
  const OnboardInfo({ Key? key, this.text, this.image, this.des}) : super(key: key);

  final String? text, image, des;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 119,
        ),
        Image.asset(
          image!,
          height: 180,
          width: 180,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 32,
              color: Colors.black
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          des!,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 14,
              color: Colors.black
          ),
        ),
      ],
    );
  }
}
