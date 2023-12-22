import 'package:cosmi/screen/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../nutrition.dart';

class InforContent extends StatefulWidget {
  final String text;
  final List<String> data;
  var pagenumber;
  var datalength;
  var pagecontroller;

  InforContent(
      {required this.text,
      required this.data,
      required this.pagenumber,
      required this.datalength,
      required this.pagecontroller});

  @override
  State<InforContent> createState() => _InforContentState();
}

class _InforContentState extends State<InforContent> {
  List<bool> isSelected = [];

  @override
  void initState() {
    super.initState();
    isSelected = List.generate(widget.data.length, (_) => false);
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
            backgroundColor: Colors.transparent,
            title: const Text(
              "회원가입",
              style: TextStyle(color: Color(0xff607C69)),
            ),
            shape: const Border(
                bottom: BorderSide(color: Color(0xff607C69), width: 1)),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back_ios),
            ),
          ),
          body: SafeArea(
              child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 20, 24, 0),
                child: Column(
                  children: [
                    Container(
                      height: 450,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.text,
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff607D69)),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate: widget.data.length >= 6
                                ? const SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 100,
                                    mainAxisSpacing: 4.0,
                                    crossAxisSpacing: 3.0,
                                    childAspectRatio: 1.8,
                                  )
                                : const SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 200,
                                    mainAxisSpacing: 10.0,
                                    crossAxisSpacing: 10.0,
                                    childAspectRatio: 2.5,
                                  ),
                            itemCount: widget.data.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isSelected[index] = !isSelected[index];
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: isSelected[index]
                                          ? Color(0xFF607D69)
                                          : Color(0xFFADADAD),
                                    ),
                                    color: isSelected[index]
                                        ? Color(0xffCCDAC1) // 선택되었을 때 색상 변경
                                        : Color(0xffF5F5F5),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      widget.data[index],
                                      textAlign: TextAlign.center,
                                      //overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize:
                                            widget.data.length >= 6 ? 13 : 15,
                                        color: isSelected[index]
                                            ? Color(0xFF607D69)
                                            : Color(0xFFADADAD),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          widget.pagenumber == 0
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      const Text(
                                        "태어난 년도",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff607D69)),
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                            hintText: '예: 2001',
                                            hintStyle: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(5))),
                                      )
                                    ])
                              : SizedBox(),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (widget.pagenumber < widget.datalength - 1) {
                              // 마지막 페이지가 아닌 경우에만 다음 페이지로 이동
                              widget.pagecontroller.nextPage(
                                duration: Duration(
                                    milliseconds: 300), // 페이지 전환 애니메이션 지속 시간
                                curve: Curves.easeInOut, // 페이지 전환 애니메이션 곡선
                              );
                            } else {
                              Get.to(() => const MyHomePage());
                            }
                          },
                          child: Container(
                            height: 46,
                            width: 308,
                            decoration: BoxDecoration(
                              color: isSelected.contains(true)
                                  ? Color(0xff607C69)
                                  : Color(0xffcbd9c1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  widget.pagenumber >= widget.datalength - 1
                                      ? isSelected.contains(true)
                                          ? const Text(
                                              "완료",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color(0xffF5F5F5)),
                                            )
                                          : const Text(
                                              "완료",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color(0xff607C69)),
                                            )
                                      : isSelected.contains(true)
                                          ? const Text(
                                              "다음",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color(0xffF5F5F5)),
                                            )
                                          : const Text(
                                              "다음",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color(0xff607C69)),
                                            )
                                ]),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ))),
    );
  }
}
