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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _flashOnController = TextEditingController(text: 'Flash on');
  final _flashOffController = TextEditingController(text: 'Flash off');
  final _cancelController = TextEditingController(text: 'Cancel');

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

    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            _scan();
            // ScanResult? collectionName = scanResult;
            // // bool collectionExists = await doesCollectionExist(collectionName.toString());
            // bool collectionExists = await doesCollectionExist('809656990909');

            // if (collectionExists) {
            //   List<DocumentSnapshot> documents =
            //       await getDocumentsInCollection('809656990909');
            //   for (var document in documents) {
            //     print('Document ID: ${document.id}');
            //     print('Data: ${document.data()}');
            //   }
            //   Get.to(() => Nutrition(collectionName.toString()));
            // } else {
            //   print('Collection does not exist.');
            // }
            // List<String> collections = await getAllCollections();
            // print('All Collections: $collections');
          },
          child: Text('Check Collection Existence and Print Documents'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // onTapTapped(0);
          scanAndCheckDocument();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapTapped,
        currentIndex: _currentIndex,
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

Future<bool> doesDocumentExistInCollection(
    String collectionName, String documentId) async {
  try {
    // Get a reference to the Firestore document
    DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance
        .collection(collectionName)
        .doc(documentId)
        .get();

    // Check if the document exists
    return documentSnapshot.exists;
  } catch (e) {
    // Handle errors, e.g., if there is a network error.
    print('Error checking document existence: $e');
    return false;
  }
}

Future<bool> doesCollectionExist(String collectionName) async {
  try {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection(collectionName).get();
    return querySnapshot.docs.isNotEmpty;
  } catch (e) {
    // Handle errors, e.g., if the collection doesn't exist or there is a network error.
    print('Error checking collection existence: $e');
    return false;
  }
}

Future<List<DocumentSnapshot>> getDocumentsInCollection(
    String collectionName) async {
  try {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection(collectionName).get();
    return querySnapshot.docs;
  } catch (e) {
    // Handle errors, e.g., if the collection doesn't exist or there is a network error.
    print('Error fetching documents from collection: $e');
    return [];
  }
}

Future<List<String>> getAllCollections() async {
  try {
    List<String> collections = [];

    // Use a dummy document to get a reference to the Firestore instance
    // and then retrieve the list of collections.
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('dummy').get();

    for (QueryDocumentSnapshot document in querySnapshot.docs) {
      collections.add(document.reference.path.split('/')[0]);
    }

    return collections;
  } catch (e) {
    print('Error retrieving collections: $e');
    return [];
  }
}
