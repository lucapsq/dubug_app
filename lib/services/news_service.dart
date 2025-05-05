import 'dart:convert';
import 'package:dubug_app/models/news.dart';
import 'package:http/http.dart' as http;

class NewsService {
  Future<List<News>> fetchNews() async {
    final response =
        await http.get(Uri.parse('http://localhost:3000/api/data'));

    if (response.statusCode == 200) {
      print(response.body);
      final List decoded = jsonDecode(response.body);

      return decoded.map((json) => News.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load news');
    }
  }
}
