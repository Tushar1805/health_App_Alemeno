import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:health_checkup/Models/labTest_model.dart';
import 'package:health_checkup/Models/package_model.dart';

class CartProvider extends ChangeNotifier {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  bool loading = false;
  CartProvider() {
    initialize();
  }

  Future<void> initialize() async {
    await fetchData();
  }

  List<Package> packages = [];
  List<LabTest> labTests = [];

  Future<List<LabTest>> getAllTests() async {
    return (await firestore.collection('labTest').get())
        .docs
        .map((item) => LabTest.fromJson(item.data()))
        .toList();
  }

  Future<List<Package>> getAllPackages() async {
    return (await firestore.collection('packages').get())
        .docs
        .map((item) => Package.fromJson(item.data()))
        .toList();
  }

  Future<void> fetchData() async {
    loading = true;
    notifyListeners();
    labTests = await getAllTests();
    packages = await getAllPackages();
    loading = false;
    notifyListeners();

    print("DATA Fetched: ${labTests[0].testName}");
  }
}
