// To parse this JSON data, do
//
//     final labTest = labTestFromJson(jsonString);
import 'dart:convert';

LabTest labTestFromJson(String str) => LabTest.fromJson(json.decode(str));

String labTestToJson(LabTest data) => json.encode(data.toJson());

class LabTest {
  final String testName;
  final int noOfTests;
  final int discountedPrice;
  final int price;
  final bool cart;
  final List<String> tests;

  LabTest({
    required this.testName,
    required this.noOfTests,
    required this.discountedPrice,
    required this.price,
    required this.cart,
    required this.tests,
  });

  factory LabTest.fromJson(Map<String, dynamic> json) => LabTest(
        testName: json["testName"],
        noOfTests: json["noOfTests"],
        discountedPrice: json["discountedPrice"],
        price: json["price"],
        cart: json["cart"],
        tests: List<String>.from(json["tests"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "testName": testName,
        "noOfTests": noOfTests,
        "discountedPrice": discountedPrice,
        "price": price,
        "cart": cart,
        "tests": List<dynamic>.from(tests.map((x) => x)),
      };
}
