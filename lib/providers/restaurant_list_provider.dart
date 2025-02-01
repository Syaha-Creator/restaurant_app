import 'package:flutter/material.dart';
import 'package:resto_app/core/api_service.dart';
import 'package:resto_app/models/restaurant.dart';

class RestaurantListProvider extends ChangeNotifier {
  final ApiService apiService;

  RestaurantListProvider({required this.apiService}) {
    fetchRestaurants();
  }

  List<Restaurant> _restaurants = [];
  List<Restaurant> get restaurants => _restaurants;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  Future<void> fetchRestaurants() async {
    _isLoading = true;
    notifyListeners();

    try {
      _restaurants = await apiService.getRestaurantsList();
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _errorMessage = e.toString();
      _isLoading = false;
      notifyListeners();
    }
  }
}
