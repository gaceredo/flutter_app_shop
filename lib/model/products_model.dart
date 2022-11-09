class ProductsModel {
  ProductsModel({
    required this.title,
    required this.price,
    required this.description,
    required this.images,
    required this.id,
  });

  String title;
  int price;
  String description;
  List<String> images;
  int id;

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
        title: json["title"],
        price: json["price"],
        description: json["description"],
        images: List<String>.from(json["images"].map((x) => x)),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "price": price,
        "description": description,
        "images": List<dynamic>.from(images.map((x) => x)),
        "id": id,
      };
}
