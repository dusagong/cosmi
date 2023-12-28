import 'package:cosmi/screen/onboarding/onboardPage.dart';
import 'package:cosmi/screen/onboarding/userInfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class OnboardingStarting extends StatelessWidget {
  const OnboardingStarting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 160),
                const Text(
                  '오랫동안 기달렸어요',
                  style: TextStyle(
                    fontFamily: 'Readex Pro',
                    color: Color(0xFF5DB075),
                    fontSize: 35,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  '당신만을 위한 AI 유해성분 분석 어플리케이션 \n MyCosmi 입니다.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Readex Pro',
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    color: Color(0xFF5DB075),
                  ),
                ),
                SizedBox(height: 150),
                GestureDetector(
                    onTap: (){
                      Get.to(() => Onboarding());
                    },
                    child: new Container(
                      width: 280,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFF5DB075),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Text(
                              "시작하기",
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ]
                      ),
                    )
                ),
              ],
            ),
          )
        )
      ),
    );
  }
}
