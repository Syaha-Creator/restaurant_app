import 'package:flutter/material.dart';
import 'package:resto_app/core/api_service.dart';

class SearchProvider extends ChangeNotifier {
  final ApiService apiService;
  SearchProvider({required this.apiService});

  List<String> _searchResult = [];
  List<String> get searchResult => _searchResult;

  bool _isSearching = false;
  bool get isSearching => _isSearching;

  Future<void> fetchSearchResult(String query) async {
    _isSearching = true;
    notifyListeners();
    try {
      final result = await apiService.getRestaurantsList();
      _searchResult = result
          .where((r) => r.name.toLowerCase().contains(query.toLowerCase()))
          .map((r) => r.id)
          .toList();
      _isSearching = false;
      notifyListeners();
    } catch (e) {
      _isSearching = false;
      notifyListeners();
    }
  }
}
