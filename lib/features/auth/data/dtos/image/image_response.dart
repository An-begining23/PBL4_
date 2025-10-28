
import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:my_app/features/auth/data/models/file/file_model.dart';
import 'package:http/http.dart' as http;
class ImageResponse {
  final String url;
  final String title;
  final String id;
  ImageResponse({required this.url, required this.id, required this.title});
  factory ImageResponse.fromJson(Map<String, dynamic> json) {
    return ImageResponse(
      url: json['url'],
      id: json['id'],
      title: json['title'],
    );
  }
}
class ListImageResponse
{
  final List<ImageResponse> images;
  ListImageResponse({required this.images});
  factory ListImageResponse.fromJson(List<dynamic> json) {
    List<ImageResponse> images = [];
    images = json.map((e) => ImageResponse.fromJson(e)).toList();
    return ListImageResponse(images: images);
  }
}

// final response = await http.get(Uri.parse('https://example.com/api/images'));
