class Course {
  Course({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.star,
  });
  late final String name;
  late final String description;
  late final String price;
  late final String imageUrl;
  late final String star;

  Course.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    price = json['price'];
    imageUrl = json['imageUrl'];
    star = json['star'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['description'] = description;
    _data['price'] = price;
    _data['imageUrl'] = imageUrl;
    _data['star'] = star;
    return _data;
  }
}
