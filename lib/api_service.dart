import 'package:http/http.dart' as http;
import 'dart:convert';
import 'photo_model.dart';

class ApiService {
  final String apiUrl = 'https://jsonplaceholder.typicode.com/photos';

  Future<List<Photo>> getPhotos() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      List<Photo> photos = data.map((json) => Photo.fromJson(json)).toList();
      return photos;
    } else {
      throw Exception('Failed to load photos');
    }
  }
}
