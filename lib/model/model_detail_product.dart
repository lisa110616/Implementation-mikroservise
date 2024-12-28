import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  List<Datum> data;
  String message;

  Product({
    required this.data,
    required this.message,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "message": message,
  };
}

class Datum {
  String id;
  ProductClass product;
  int productId;
  Review review;

  Datum({
    required this.id,
    required this.product,
    required this.productId,
    required this.review,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    product: ProductClass.fromJson(json["product"]),
    productId: json["product_id"],
    review: Review.fromJson(json["review"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "product": product.toJson(),
    "product_id": productId,
    "review": review.toJson(),
  };
}

class ProductClass {
  DateTime createdAt;
  String description;
  int id;
  String name;
  int price;
  DateTime updatedAt;

  ProductClass({
    required this.createdAt,
    required this.description,
    required this.id,
    required this.name,
    required this.price,
    required this.updatedAt,
  });

  factory ProductClass.fromJson(Map<String, dynamic> json) => ProductClass(
    createdAt: DateTime.parse(json["createdAt"]),
    description: json["description"],
    id: json["id"],
    name: json["name"],
    price: json["price"],
    updatedAt: DateTime.parse(json["updatedAt"]),
  );

  Map<String, dynamic> toJson() => {
    "createdAt": createdAt.toIso8601String(),
    "description": description,
    "id": id,
    "name": name,
    "price": price,
    "updatedAt": updatedAt.toIso8601String(),
  };
}

class Review {
  String comment;
  int ratings;

  Review({
    required this.comment,
    required this.ratings,
  });

  factory Review.fromJson(Map<String, dynamic> json) => Review(
    comment: json["comment"],
    ratings: json["ratings"],
  );

  Map<String, dynamic> toJson() => {
    "comment": comment,
    "ratings": ratings,
  };
}
