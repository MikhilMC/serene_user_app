// ignore_for_file: public_member_api_docs, sort_constructors_first
class PopularPlace {
  final String placeName;
  final String imageUrl;

  const PopularPlace({
    required this.placeName,
    required this.imageUrl,
  });

  @override
  String toString() {
    return '''
    Place Name: $placeName
    Image URL: $imageUrl
    ''';
  }
}
