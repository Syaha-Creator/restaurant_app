import 'package:flutter/material.dart';

class ReviewProvider extends ChangeNotifier {
  final List<Map<String, String>> _reviews = [];
  List<Map<String, String>> get reviews => _reviews;

  void addReview(String name, String review) {
    _reviews.add({'name': name, 'review': review});
    notifyListeners();
  }
}
