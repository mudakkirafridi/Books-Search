import 'package:books_search/fetch_flutter_book.dart';
import 'package:books_search/models/flutter_model.dart'; // Import the FetchBooks class
import 'package:books_search/models/health_book.dart';
import 'package:flutter/foundation.dart';

class AppProvider extends ChangeNotifier {
  FlutterBook? flutterBook;
  HealthBook? healthBook;
  bool isLoading = false;

  // Method to fetch FlutterBook
  Future<void> fetchFlutterBookData() async {
    try {
      isLoading = true;
      notifyListeners(); // Notify listeners about the loading state

      flutterBook = await FetchBooks.fetchFlutterBook();
      healthBook = await FetchBooks.fetchHealthBook();
      isLoading = false;
      notifyListeners(); // Notify listeners about the updated data
    } catch (error) {
      isLoading = false;
      notifyListeners();
    }
  }
}
