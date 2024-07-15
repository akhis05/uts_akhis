class MenuModel {
  final int id;
  final String title;
  final String imageUrl;
  final int price;

  MenuModel({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.price,
  });

  factory MenuModel.fromJson(Map<String, dynamic> json) {
    return MenuModel(
        id: json['id'],
        title: json['title'],
        imageUrl: json['image_url'],
        price: json["price"]);
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'image_url': imageUrl,
      'price': price,
    };
  }
}
