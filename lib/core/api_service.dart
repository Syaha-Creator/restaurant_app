import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/restaurant.dart';

class ApiService {
  static const String _baseUrl = "https://restaurant-api.dicoding.dev";

  Future<List<Restaurant>> getRestaurantsList() async {
    try {
      final response = await http.get(Uri.parse("$_baseUrl/list"));

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = json.decode(response.body);
        final List<dynamic> restaurantList = jsonData["restaurants"];

        return restaurantList.map((json) => Restaurant.fromJson(json)).toList();
      } else {
        throw Exception("Gagal memuat daftar restoran: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error mengambil data restoran: $e");
    }
  }
}
