import 'package:carousel_slider/carousel_slider.dart';
import 'package:cosmi/screen/login.dart';
import 'package:cosmi/screen/scanner.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/services.dart';
import 'package:cosmi/screen/nutrition.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _flashOnController = TextEditingController(text: 'Flash on');
  final _flashOffController = TextEditingController(text: 'Flash off');
  final _cancelController = TextEditingController(text: 'Cancel');
  CarouselController carouselController = CarouselController();

  var _aspectTolerance = 0.00;
  var _numberOfCameras = 0;
  var _selectedCamera = -1;
  var _useAutoFocus = true;
  var _autoEnableFlash = false;

  static final _possibleFormats = BarcodeFormat.values.toList()
    ..removeWhere((e) => e == BarcodeFormat.unknown);

  List<BarcodeFormat> selectedFormats = [..._possibleFormats];

  @override
  void initState() {
    super.initState();
    // _scan();

    Future.delayed(Duration.zero, () async {
      _numberOfCameras = await BarcodeScanner.numberOfCameras;
      setState(() {});
    });
  }

  int _currentIndex = 1;
  // final List<Widget> _children = [
  //   Login(),
  //   MyHomePage(),
  //   Login(),
  // ];
  @override
  Widget build(BuildContext context) {
    // final scanResult = this.scanResult;

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
            "홈",
            style: TextStyle(color: Color(0xff607C69)),
          ),
          shape: const Border(
              bottom: BorderSide(color: Color(0xff607C69), width: 1)),
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        body: SafeArea(
            child: ListView(
          //physics: ClampingScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(24, 20, 24, 0),
              child: Column(
                children: [
                  CarouselSlider(
                    // Set carousel controller
                    carouselController: carouselController,
                    items: [1, 2, 3].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                              child: Center(
                                child: Image.asset(
                                  'assets/home/$i.png', // Assuming your images are named 1.png, 2.png, etc.
                                  width: 200, // Adjust the width as needed
                                  height: 200, // Adjust the height as needed
                                ),
                              ));
                        },
                      );
                    }).toList(),
                    options: CarouselOptions(
                      height: 200,
                      // aspectRatio: 1 / 9,
                      viewportFraction: 0.5,
                      // Set the initial page
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      onPageChanged: (index, reason) {},
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Change page on each tap
                  ElevatedButton(
                    onPressed: () => carouselController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.linear),
                    child: const Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            )
          ],
        )),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff617B69),
          onPressed: () {
            // onTapTapped(0);
            print('object1');
            scanAndCheckDocument();
          },
          child: Image.asset('assets/home/camera.png'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 10,
                  offset: const Offset(0, -4)),
            ],
          ),
          child: BottomNavigationBar(
            selectedItemColor: Color(0xff607C69),
            onTap: onTapTapped,
            currentIndex: _currentIndex,
            // elevation: 10,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.text_snippet),
                label: '나의 판매글',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people),
                label: '마이페이지',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _scan() async {
    try {
      final result = await BarcodeScanner.scan(
        options: ScanOptions(
          strings: {
            'cancel': _cancelController.text,
            'flash_on': _flashOnController.text,
            'flash_off': _flashOffController.text,
          },
          restrictFormat: selectedFormats,
          useCamera: _selectedCamera,
          autoEnableFlash: _autoEnableFlash,
          android: AndroidOptions(
            aspectTolerance: _aspectTolerance,
            useAutoFocus: _useAutoFocus,
          ),
        ),
      );
      setState(() {
        // scanResult = result;
        // doesCollectionExist(scanResult as String);
      });
      bool documentExists =
          await doesDocumentExistInCollection('Products', result.rawContent);

      if (documentExists) {
        // The document exists in the "Products" collection
        DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance
            .collection('Products')
            .doc(result.rawContent)
            .get();

        print('Document ID: ${documentSnapshot.id}');
        print('Data: ${documentSnapshot.data()}');

        // Navigate to the Nutrition screen with the scanned result
        Get.to(() => Nutrition(result.rawContent));
      } else {
        // The document does not exist in the "Products" collection
        print('Document does not exist.');
      }
    } on PlatformException catch (e) {
      // setState(() {
      ScanResult(
        rawContent: e.code == BarcodeScanner.cameraAccessDenied
            ? 'The user did not grant the camera permission!'
            : 'Unknown error: $e',
      );
      // });
    }
  }

  void onTapTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
