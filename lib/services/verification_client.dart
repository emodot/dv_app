import 'dart:convert';
import 'package:dv_app/model/verification_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class VerificationClient {
  static const baseUrl = "https://myapi11.000webhostapp.com/api.php";
  Future<DrugVerification> getDrug(String drugId) async {
    late DrugVerification drugVerification;
    final url = Uri.parse('$baseUrl?reg=$drugId');
    final response = await http.get(url);
    // print(response);
    if (response.statusCode == 200) {
      print(response.body);
      final jsonResponse = jsonDecode(response.body);
      drugVerification = DrugVerification.fromJSON(jsonResponse);
    } else {
      // print("Failure:$response.body");
      debugPrint(response.body);
    }
    return drugVerification;
  }
}