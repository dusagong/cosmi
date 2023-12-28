import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class TapPage extends StatefulWidget {
  const TapPage({Key? key}) : super(key: key);

  @override
  State<TapPage> createState() => _TapPageState();
}

class _TapPageState extends State<TapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back_ios)),
          title: const Text(
            "게시물",
            style: TextStyle(color: Color(0xff607C69)),
          ),
          shape: const Border(
              bottom: BorderSide(color: Color(0xff607C69), width: 1)),
          backgroundColor: Color(0xffF5F5F5),
          centerTitle: true,
        ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(24, 20, 24, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/home/Rectangle.png'),
                ],
              ),
              SizedBox(height: 3,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.save_alt, color: Color(0xff607C69),),
                  Text("331", style: TextStyle(color: Color(0xff607C69)))
                ],
              ),
              SizedBox(height: 3,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1.아보벤젠",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "(파르솔 1789,부틸메록시디벤조일메탄)\n: 자외선 차단제에 주로 사용.",
                        style: TextStyle(fontSize: 13),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "- 햇빛과 만나면 DNA손상,\n 피부암을 유발한다고 한다.",
                        style: TextStyle(fontSize: 13),
                      ),

                    ],
                  ),
                ],
              ),
              SizedBox(height: 7,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "2.파라벤",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "에틸,메틸,프로필,부틸,이소프로필)\n: 대표적인 화학 방부제",
                        style: TextStyle(fontSize: 13),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "- 호르몬 작용으로 유방암을 유발하고,\n 메칠 파라벤 자외선 노출 시 DNA손상으로 피부 노화가 촉진된다",
                        style: TextStyle(fontSize: 13),
                      ),

                    ],
                  ),
                ],
              ),
              SizedBox(height: 7,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "3.미네일 오일",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "- 피부호흡,영양,수분 흡수 차단으로 자가 면역성\n저하, 여드름 피부 질환 유발, 피부 노화 촉진한다.",
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),



            ],
          ),
        )
      )
    );
  }
}
