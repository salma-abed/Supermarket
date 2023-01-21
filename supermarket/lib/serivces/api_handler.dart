import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mobileproject/constants/api_constants.dart';
import 'package:mobileproject/models/products_model.dart';

class APIHandler {
  static Future<List<ProductsModel>> getAllProducts() async {
    var uri = Uri.https(
      BASE_URL,
      "api/v1/products",
    );
    var response = await http.get(uri);

    // print("response ${jsonDecode(response.body)}");
    var data = jsonDecode(response.body);
    List tempList = [];
    for (var v in data) {
      // print('V $v\n\n');
    }
    return ProductsModel.productsFromSnapshot(tempList);
  }
}
