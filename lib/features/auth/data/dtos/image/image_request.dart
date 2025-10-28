class ImageRequest {
  final String url;
  final String id;
  final String title;
  ImageRequest({required this.url,required this.id,required this.title});
  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'id':id,
      'title':title,
    };
  }
}
class ListImageRequest {
  final List<ImageRequest> images;
  ListImageRequest({required this.images});
  Map<String, dynamic> toJson() {
    return {
      'images': images.map((image) => image.toJson()).toList(),
    };
  }
}
