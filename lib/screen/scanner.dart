import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cosmi/screen/nutrition.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'dart:async'; // Import this to use the Timer class

Future<void> scanAndCheckDocument() async {
  try {
    final result = await BarcodeScanner.scan(
      options: ScanOptions());
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
    } else {
      // The document does not exist in the "Products" collection
      print('Document does not exist.');
    }
  } on PlatformException catch (e) {
    print('Error scanning barcode: $e');
  }
}

Future<bool> doesDocumentExistInCollection(
    String collectionName, String documentId) async {
  try {
    DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance
        .collection(collectionName)
        .doc(documentId)
        .get();

    return documentSnapshot.exists;
  } catch (e) {
    print('Error checking document existence: $e');
    return false;
  }
}
