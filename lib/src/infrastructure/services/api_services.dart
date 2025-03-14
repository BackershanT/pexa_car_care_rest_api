import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../domain/model/post_model.dart';

class ApiService {
  Future<List<PostModel>> fetchPosts() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => PostModel.fromJson(json)).take(10).toList(); // Take first 10 posts ✅
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
