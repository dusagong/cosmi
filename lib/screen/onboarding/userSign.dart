import 'package:cosmi/screen/onboarding/userInfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class UserSignIn extends StatelessWidget {
  const UserSignIn({Key? key}) : super(key: key);

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
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back_ios)),
            title: const Text(
              "회원가입",
              style: TextStyle(color: Color(0xff607C69)),
            ),
            shape: const Border(
                bottom: BorderSide(color: Color(0xff607C69), width: 1)),
            backgroundColor: Colors.transparent,
            centerTitle: true,
          ),
          body: SafeArea(
              child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 10, 24, 0),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "이름",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff607D69)),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff607D69)),
                                  borderRadius: BorderRadius.circular(5))),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "아이디(이메일)",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff607D69)),
                        ),
                        TextField(
                            decoration: InputDecoration(
                          hintText: '아이디(이메일)을 입력해주세요',
                          hintStyle:
                              TextStyle(fontSize: 15, color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff607D69)),
                              borderRadius: BorderRadius.circular(5)),
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "비밀번호",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff607D69)),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              hintText: '비밀번호(문자,숫자 포함 8~20자)',
                              hintStyle:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff607D69)),
                                  borderRadius: BorderRadius.circular(5))),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "비밀번호 확인",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff607D69)),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              hintText: '비밀번호 확인',
                              hintStyle:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff607D69)),
                                  borderRadius: BorderRadius.circular(5))),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const UserInformation());
                      },
                      child: Container(
                        width: 308,
                        height: 46,
                        decoration: BoxDecoration(
                          color: Color(0xffcbd9c1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "다음",
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xff607C69)),
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ))),
    );
  }
}
