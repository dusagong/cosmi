import 'package:cosmi/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Image.asset(
                    "assets/login/cloud.png",
                    width: 82,
                    height: 70,
                  ),
                ],
              ),
              Image.asset(
                "assets/login/MyCosmi.png",
                width: 172,
                height: 40,
              ),
              SizedBox(
                height: 26,
              ),
              Container(
                width: 250,
                height: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    width: 1,
                    color: Color(0xff607D69),
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 19,
                    ),
                    Text("아이디(이메일)",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffADADAD))),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 250,
                height: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    width: 1,
                    color: Color(0xff607D69),
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 19,
                    ),
                    Text("비밀번호",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffADADAD))),
                  ],
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 82,
                  ),
                  Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text("자동로그인",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ))
                ],
              ),
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => MyHomePage());
                },
                child: Container(
                  width: 250,
                  height: 46,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xffcbd9c1)),
                  child: Center(
                    child: Text("로그인",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffffffff),
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Text("아이디 찾기  |  비밀번호 찾기  |  회원가입 ",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(
                height: 190,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/login/horizon.png",
                    width: 99,
                    height: 1,
                  ),
                  Text("SNS 계정으로 로그인",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff607C6A))),
                  Image.asset(
                    "assets/login/horizon.png",
                    width: 99,
                    height: 1,
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/login/kakao.png",
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  Image.asset(
                    "assets/login/naver.png",
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  Image.asset(
                    "assets/login/google.png",
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  Image.asset(
                    "assets/login/apple.png",
                    width: 50,
                    height: 50,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
