import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Nutrition extends StatefulWidget {
  final String cole;

  Nutrition(this.cole);

  @override
  _NutritionState createState() => _NutritionState();
}

class _NutritionState extends State<Nutrition> {
  bool isClick = false;
  void init() {
    super.initState();
    setState(() {
      isClick = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/back/realPaper.png'))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("성분",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff607C69))),
          centerTitle: false,
          backgroundColor: Colors.transparent,
        ),
        body: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 76,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 23,
                    ),
                    Text("성분 구성",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        )),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Row(children: [
                        Image.asset(
                          "assets/nutrition/low.png",
                          width: 16,
                          height: 16,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text("낮은 위험",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ))
                      ]),
                    ),
                    Container(
                      child: Row(children: [
                        Image.asset(
                          "assets/nutrition/middle.png",
                          width: 16,
                          height: 16,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text("중간 위험",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ))
                      ]),
                    ),
                    Container(
                      child: Row(children: [
                        Image.asset(
                          "assets/nutrition/high.png",
                          width: 16,
                          height: 16,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text("높은 위험",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ))
                      ]),
                    ),
                    Container(
                      child: Row(children: [
                        Image.asset(
                          "assets/nutrition/nonsence.png",
                          width: 16,
                          height: 16,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text("등급 미정",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ))
                      ]),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  "assets/nutrition/bar.png",
                  width: 350,
                  height: 20,
                ),
                SizedBox(
                  height: 43,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("전체 성분",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          )),
                      Text("35개",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 43,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("20가지 주의 성분",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          )),
                      Text("8개",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("알레르기 주의 성분",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          )),
                      Text("0개",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 63,
                ),
                SizedBox(
                  height: 83,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(
                        children: [
                          Container(
                              width: 56,
                              height: 83,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xffDBE6D3))),
                          Container(
                              width: 56,
                              height: 83,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xff607c69))),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                              width: 56,
                              height: 83,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xffDBE6D3))),
                          Container(
                              width: 56,
                              height: 83,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xff607c69))),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                              width: 56,
                              height: 83,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xffDBE6D3))),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  width: 56,
                                  height: 64,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xff607c69))),
                            ],
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                              width: 56,
                              height: 83,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xffDBE6D3))),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  width: 56,
                                  height: 21,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xff607c69))),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("피부 보습",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff969696))),
                    Text("피부 보호",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff969696))),
                    Text("수분 증발 차단",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff969696))),
                    Text("수렴 진정",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff969696)))
                  ],
                ),
                SizedBox(
                  height: 99,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isClick = true;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffDBE5D4)),
                        // backgroundColor: Color.fromRGBO(219, 230, 211, 1),),
                        child: Text("저장 하기",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff607C6A))),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //Alert!!!
            Visibility(
              visible: isClick, // Show or hide based on the value of isClick
              child: Center(
                child: Container(
                  width: 255.27,
                  height: 125.11,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xffADADAD),
                      width: 1,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x40000000),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(4, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("저장하였습니다.",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff607D6A))),
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          width: 91,
                          height: 31,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              color: Color(0xffDBE5D4)
                              // border: Border.all(
                              //   color: Color(0xff686572),
                              //   width: 2,
                              // ),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.grey.withOpacity(0.5),
                              //     spreadRadius: 1,
                              //     blurRadius: 1,
                              //     offset: Offset(0, 3),
                              //   ),
                              // ],
                              ),
                          child: Center(
                              child: Text("확인",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff5F7C69)))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
