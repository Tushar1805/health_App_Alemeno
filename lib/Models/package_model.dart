// To parse this JSON data, do
//
//     final package = packageFromJson(jsonString);

import 'dart:convert';

Package packageFromJson(String str) => Package.fromJson(json.decode(str));

String packageToJson(Package data) => json.encode(data.toJson());

class Package {
  final String packageName;
  final int noOfTests;
  final int discountedPrice;
  final int price;
  final bool cart;
  final List<String> details;
  final String icon;

  Package({
    required this.packageName,
    required this.noOfTests,
    required this.discountedPrice,
    required this.price,
    required this.cart,
    required this.details,
    required this.icon,
  });

  factory Package.fromJson(Map<String, dynamic> json) => Package(
        packageName: json["packageName"],
        noOfTests: json["noOfTests"],
        discountedPrice: json["discountedPrice"],
        price: json["price"],
        cart: json["cart"],
        details: List<String>.from(json["details"].map((x) => x)),
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "packageName": packageName,
        "noOfTests": noOfTests,
        "discountedPrice": discountedPrice,
        "price": price,
        "cart": cart,
        "details": List<dynamic>.from(details.map((x) => x)),
        "icon": icon,
      };
}
