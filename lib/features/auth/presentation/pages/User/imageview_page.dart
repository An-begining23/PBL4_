import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class ImageviewPage extends StatefulWidget
{
  const ImageviewPage({super.key});
  @override
  State<ImageviewPage> createState() => _ImageviewPageState();
}
class _ImageviewPageState extends State<ImageviewPage>
{
   late Future<List<String>> imageUrls;

  @override
  void initState() {
    super.initState();
    imageUrls = fetchImageUrls(); // Gọi API để lấy danh sách URL ảnh
  }

  // Hàm gọi API để lấy danh sách URL ảnh
  Future<List<String>> fetchImageUrls() async {
    final response = await http.get(Uri.parse('https://your-api-url.com/images'));

    if (response.statusCode == 200) {
      // Giả sử API trả về danh sách các URL ảnh
      List<dynamic> data = json.decode(response.body);
      return data.map((imageData) => imageData['url'].toString()).toList();
    } else {
      throw Exception('Failed to load images');
    }
  }

  late Future<List<String>> _ImagePageViewPage;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image View Page"),
      ),
      body: Center(
        child: Text("This is the Image View Page"),
      ),
    );
  }
}