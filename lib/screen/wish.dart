import 'package:cosmi/constants.dart';
import 'package:cosmi/controll.dart';
import 'package:cosmi/home/home_screen.dart';
import 'package:cosmi/screen/ai.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'aiAnalysis.dart';

class Wish extends StatefulWidget {
  const Wish({super.key});

  @override
  State<Wish> createState() => _WishState();
}

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: mDarkBackgroundColor,
    elevation: 0,
    centerTitle: true,
    title: Text(
      'Mycosmi',
      style: TextStyle(
          color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
    ),
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
      onPressed: () {
        Get.back();
      },
    ),
    // actions: <Widget>[
    //   IconButton(
    //     icon: Image.asset(
    //       'assets/images/cart.png',
    //       width: 24,
    //     ),
    //     onPressed: () {},
    //   )
    // ],
  );
}

class _WishState extends State<Wish> {
  @override
  Widget build(BuildContext context) {
    SimpleController controller = Get.put(SimpleController()); // controller 등록

    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // if (controller.counter3)
          if (controller.getCounter(3))
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x320E151B),
                      offset: Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 8, 8, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Hero(
                        tag: 'ControllerImage',
                        transitionOnUserGestures: true,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child:
                                // Image.network(
                                //   'https://static.nike.com/a/images/t_prod_ss/w_640,c_limit,f_auto/95c8dcbe-3d3f-46a9-9887-43161ef949c5/sleepers-of-the-week-release-date.jpg',
                                //   width: 80,
                                //   height: 80,
                                //   fit: BoxFit.fitWidth,
                                // ),
                                Image.asset(
                              'assets/nutrition/nu3.jpeg',
                              width: 80,
                              height: 80,
                              fit: BoxFit.fitWidth,
                            )),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                child: Text(
                                  '다슈 클래식 스타일 그루밍 토닉',
                                  // style: FlutterFlowTheme.of(context).titleLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            controller.deleteCounter(3);
                          });
                          print(controller.getCounter(3));
                        },
                        icon: Icon(Icons.delete_outline),
                        color: Colors.red,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Get.to(() => Analysis());
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xFF5DB075)),
                          child: Text(
                            'AI 분석',
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          if (controller.getCounter(2))
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x320E151B),
                      offset: Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 8, 8, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Hero(
                        tag: 'ControllerImage',
                        transitionOnUserGestures: true,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child:
                                // Image.network(
                                //   'https://static.nike.com/a/images/t_prod_ss/w_640,c_limit,f_auto/95c8dcbe-3d3f-46a9-9887-43161ef949c5/sleepers-of-the-week-release-date.jpg',
                                //   width: 80,
                                //   height: 80,
                                //   fit: BoxFit.fitWidth,
                                // ),
                                Image.asset(
                              'assets/nutrition/nu2.jpeg',
                              width: 80,
                              height: 80,
                              fit: BoxFit.fitWidth,
                            )),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                child: Text(
                                  'GATS BY\nTechnical spray',
                                  // style: FlutterFlowTheme.of(context).titleLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            controller.deleteCounter(2);
                          });
                          print(controller.getCounter(2));
                        },
                        icon: Icon(Icons.delete_outline),
                        color: Colors.red,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Get.to(() => Analysis());
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xFF5DB075)),
                          child: Text(
                            'AI 분석',
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          if (controller.getCounter(1))
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x320E151B),
                      offset: Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 8, 8, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Hero(
                        tag: 'ControllerImage',
                        transitionOnUserGestures: true,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child:
                                // Image.network(
                                //   'https://static.nike.com/a/images/t_prod_ss/w_640,c_limit,f_auto/95c8dcbe-3d3f-46a9-9887-43161ef949c5/sleepers-of-the-week-release-date.jpg',
                                //   width: 80,
                                //   height: 80,
                                //   fit: BoxFit.fitWidth,
                                // ),
                                Image.asset(
                              'assets/nutrition/nu1.jpeg',
                              width: 80,
                              height: 80,
                              fit: BoxFit.fitWidth,
                            )),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                child: Text(
                                  '피지오겔 \nAI Cream',
                                  // style: FlutterFlowTheme.of(context).titleLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            controller.deleteCounter(1);
                          });
                        },
                        icon: Icon(Icons.delete_outline),
                        color: Colors.red,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Get.to(() => Analysis());
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xFF5DB075)),
                          child: Text(
                            'AI 분석',
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          if (controller.getCounter(0))
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x320E151B),
                      offset: Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 8, 8, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Hero(
                        tag: 'ControllerImage',
                        transitionOnUserGestures: true,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child:
                                // Image.network(
                                //   'https://static.nike.com/a/images/t_prod_ss/w_640,c_limit,f_auto/95c8dcbe-3d3f-46a9-9887-43161ef949c5/sleepers-of-the-week-release-date.jpg',
                                //   width: 80,
                                //   height: 80,
                                //   fit: BoxFit.fitWidth,
                                // ),
                                Image.asset(
                              'assets/UT/horse.jpeg',
                              width: 80,
                              height: 80,
                              fit: BoxFit.fitWidth,
                            )),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                child: Text(
                                  '마유 크림',
                                  // style: FlutterFlowTheme.of(context).titleLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            controller.deleteCounter(0);
                          });
                        },
                        icon: Icon(Icons.delete_outline),
                        color: Colors.red,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Get.to(() => Analysis());
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xFF5DB075)),
                          child: Text(
                            'AI 분석',
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          // controller.counter1
          //     ? Padding(
          //         padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
          //         child: Container(
          //           width: double.infinity,
          //           height: 100,
          //           decoration: BoxDecoration(
          //             color: Colors.white,
          //             boxShadow: [
          //               BoxShadow(
          //                 blurRadius: 4,
          //                 color: Color(0x320E151B),
          //                 offset: Offset(0, 1),
          //               )
          //             ],
          //             borderRadius: BorderRadius.circular(8),
          //           ),
          //           child: Padding(
          //             padding: EdgeInsetsDirectional.fromSTEB(12, 8, 8, 8),
          //             child: Row(
          //               mainAxisSize: MainAxisSize.max,
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: [
          //                 Hero(
          //                   tag: 'ControllerImage',
          //                   transitionOnUserGestures: true,
          //                   child: ClipRRect(
          //                       borderRadius: BorderRadius.circular(12),
          //                       child:
          //                           // Image.network(
          //                           //   'https://static.nike.com/a/images/t_prod_ss/w_640,c_limit,f_auto/95c8dcbe-3d3f-46a9-9887-43161ef949c5/sleepers-of-the-week-release-date.jpg',
          //                           //   width: 80,
          //                           //   height: 80,
          //                           //   fit: BoxFit.fitWidth,
          //                           // ),
          //                           Image.asset(
          //                         'assets/UT/horse.jpeg',
          //                         width: 80,
          //                         height: 80,
          //                         fit: BoxFit.fitWidth,
          //                       )),
          //                 ),
          //                 Expanded(
          //                   child: Padding(
          //                     padding:
          //                         EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
          //                     child: Column(
          //                       mainAxisSize: MainAxisSize.max,
          //                       mainAxisAlignment: MainAxisAlignment.center,
          //                       crossAxisAlignment: CrossAxisAlignment.start,
          //                       children: [
          //                         Padding(
          //                           padding: EdgeInsetsDirectional.fromSTEB(
          //                               0, 0, 0, 8),
          //                           child: Text(
          //                             '마유 크림',
          //                             // style: FlutterFlowTheme.of(context).titleLarge,
          //                           ),
          //                         ),
          //                       ],
          //                     ),
          //                   ),
          //                 ),
          //                 IconButton(
          //                   onPressed: () {
          //                     setState(() {
          //                       controller.delete1();
          //                     });
          //                     print(controller.counter1);
          //                   },
          //                   icon: Icon(Icons.delete_outline),
          //                   color: Colors.red,
          //                 ),
          //                 ElevatedButton(
          //                     onPressed:  () {Get.to(() => Analysis());},
          //                     style: ElevatedButton.styleFrom(primary: Color(0xFF5DB075)),
          //                     child: Text('AI 분석', style: TextStyle(color: Colors.white),)
          //                 )

          //               ],
          //             ),
          //           ),
          //         ),
          //       )
          //     : Padding(
          //         padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
          //         child: Container(
          //           width: double.infinity,
          //           height: 100,
          //           decoration: BoxDecoration(
          //             color: Colors.white,
          //             boxShadow: [
          //               BoxShadow(
          //                 blurRadius: 4,
          //                 color: Color(0x320E151B),
          //                 offset: Offset(0, 1),
          //               )
          //             ],
          //             borderRadius: BorderRadius.circular(8),
          //           ),
          //           child: Padding(
          //             padding: EdgeInsetsDirectional.fromSTEB(12, 8, 8, 8),
          //             child: Column(
          //               mainAxisSize: MainAxisSize.max,
          //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //               children: [
          //                 Text(
          //                   'add what you like',
          //                   style: TextStyle(color: Colors.grey),
          //                 ),
          //                 IconButton(
          //                     onPressed: () {
          //                       Get.offAll(() => HomeScreen());
          //                     },
          //                     icon: Icon(
          //                       Icons.add,
          //                       color: Colors.grey,
          //                     ))
          //               ],
          //             ),
          //           ),
          //         ),
          //       )
        ],
      ),
    );
  }
}
