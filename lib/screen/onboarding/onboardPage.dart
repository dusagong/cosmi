import 'package:cosmi/screen/onboarding/onboardInfo.dart';
import 'package:cosmi/screen/onboarding/userInfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "바코드 인식",
      "des": "Mycomsi에서는 앱 내 카메라로\n 바코드를 인식하여 화장품의 유해 성분을 파악할 수 있어요",
      "image": "assets/onboard/camera.png"
    },
    {
      "text": "사용자 맞춤형 AI 분석",
      "des" : "Mycosmi에서는 사용자 피부 타입에 맞게\n 맞춤형 AI 분석을 제공합니다.",
      "image": "assets/onboard/target.png"
    },
    {
      "text": "다중 언어 지원",
      "des" : "Mycosmi에서는 K-뷰티를 사랑하는 타국가 유저들이\n 사용할 수 있게 다중 언어를 지원합니다.",
      "image": "assets/onboard/rocket.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: PageView.builder(
              controller: _pageController, // PageController 연결
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: splashData.length,
              itemBuilder: (context, index) => OnboardInfo(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                  des: splashData[index]['des']
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashData.length, (index) => buildDot(index: index),
                    ),
                  ),
                  Spacer(flex: 3),
                  GestureDetector(
                      onTap: (){
                        if (currentPage < splashData.length - 1) { // 마지막 페이지가 아닌 경우에만 다음 페이지로 이동
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 300), // 페이지 전환 애니메이션 지속 시간
                            curve: Curves.easeInOut, // 페이지 전환 애니메이션 곡선
                          );
                        }
                        else
                        {
                          Get.to(() => UserInformation());
                        }
                      },
                      child: new Container(
                        width: 326,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xFF5DB075),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              new Text(
                                "다음",
                                style: TextStyle(fontSize: 18, color: Colors.white),
                              ),
                            ]
                        ),
                      )
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    ) ;
  }
  AnimatedContainer buildDot({int? index}) {
    Duration myAnimationDuration = Duration(milliseconds: 200);
    return AnimatedContainer(
      duration: myAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Color(0xFF5DB075) : Color(0xFF626877),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
