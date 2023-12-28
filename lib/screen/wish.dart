import 'package:cosmi/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Container(
          //   child: Row(
          //     children: [
          //       Image.asset(
          //         'assets/UT/horse.jpeg',
          //         height: 140,
          //       ),
          //       Column(
          //         crossAxisAlignment: CrossAxisAlignment.end,
          //         children: [
          //           Text('data'),
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.end,
          //             children: [
          //               Container(
          //                 child: Text('HI'),
          //               )
          //             ],
          //           )
          //         ],
          //       )
          //     ],
          //   ),
          // )
          // Generated code for this Container Widget...
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
                          // Get.to()
                        },
                        icon: Icon(Icons.rocket))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
