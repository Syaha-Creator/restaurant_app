import 'package:flutter/material.dart';
import 'package:resto_app/core/api_service.dart';
import 'package:resto_app/models/restaurant.dart';

class RestaurantDetailProvider extends ChangeNotifier {
  final ApiService apiService;
  RestaurantDetailProvider({required this.apiService});

  Restaurant? _restaurant;
  Restaurant? get restaurant => _restaurant;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  Future<void> fetchRestaurantDetail(String id) async {
    _isLoading = true;
    notifyListeners();
    try {
      _restaurant = await apiService.getRestaurantDetail(id);
      _errorMessage = null;
    } catch (e) {
      _errorMessage = e.toString();
    }
  }
}
