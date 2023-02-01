import 'categoriesm.dart';

class ProductM {
  int? id;
  String? title;
  int? price;
  String? description;
  CategoryM? category;
  List<String>? images;

  ProductM(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.images});

  ProductM.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    category =
        json['category'] != null ? CategoryM.fromJson(json['category']) : null;
    images = json['images'].cast<String>();
  }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['title'] = this.title;
//     data['price'] = this.price;
//     data['description'] = this.description;
//     if (this.category != null) {
//       data['category'] = this.category!.toJson();
//     }
//     data['images'] = this.images;
//     return data;
//   }
}
