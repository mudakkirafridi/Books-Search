

import 'dart:convert';

import 'package:books_search/models/flutter_model.dart';
import 'package:books_search/models/health_book.dart';
import 'package:http/http.dart' as http;

class FetchBooks{
static Future<FlutterBook> fetchFlutterBook()async{
    final response = await http.get(Uri.parse('https://api.itbook.store/1.0/search/flutter'));
    var data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return FlutterBook.fromJson(data);
    } else {
     return throw 'error while fetchig api';
    }
  }

  // fetch health books 
  static Future<HealthBook> fetchHealthBook()async{
    final response = await http.get(Uri.parse('https://api.itbook.store/1.0/search/health'));
    var data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return HealthBook.fromJson(data);
    } else {
     return throw 'error while fetchig api';
    }
  }
}