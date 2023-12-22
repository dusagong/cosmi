import 'package:cosmi/screen/onboarding/userInfoCont.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class UserInformation extends StatefulWidget {
  const UserInformation({Key? key}) : super(key: key);

  @override
  State<UserInformation> createState() => _UserInformationState();
}

class _UserInformationState extends State<UserInformation> {
  List<bool> isSelected = [];
  PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;
  int pagenumber = 0;

  List<Map<String, dynamic>> InfoData = [
    {
      "text": "성별",
      "data": [
        "남자",
        "여자"
      ]
    },
    {
      "text": "피부 타입",
      "data": [
        "건성",
        "중성",
        "지성",
        "복합성",
        "수부지",
      ],
    },
    {
      "text": "피부 고민",
      "data": [
        "아토피",
        "여드름",
        "민감성",
        "미백 잡티",
        "피지\n블랙헤드",
        "다크서클",
        "속건조",
        "주름/탄력",
        "모공",
        "홍조",
        "각질",
        "비건",
        "해당 없음",
      ],
    },
    {
      "text": "두피/모발 고민",
      "data": [
        "탈모",
        "손상모",
        "두피 트러블",
        "열감 두피",
        "지성 두피",
        "가려움",
        "비듬/각질",
        "해당 없음"
      ]
    },
    {
      "text": "건강 고민",
      "data": [
        "눈 건강",
        "만성 피로",
        "수면\n스트레스",
        "체지방 감소",
        "면역력 증가",
        "근력강화",
        "콜레스테롤 개선",
        "장건강",
        "간건강",
        "뼈/관절/치아",
        "여성건강",
        "혈액순환",
        "소화/위장",
        "해당 없음",
      ],
    },
  ];

  @override
  void initState() {
    super.initState();
    isSelected = List.generate(InfoData.length, (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController, // PageController 연결
      onPageChanged: (value) {
        setState(() {
          currentPage = value;
        });
      },
      itemCount: InfoData.length,
      itemBuilder: (context, index) => InforContent(
          text: InfoData[index]["text"],
          data: InfoData[index]["data"].cast<String>(),
          pagenumber : currentPage,
          datalength : InfoData.length,
          pagecontroller : _pageController
      ),
    );
  }
}