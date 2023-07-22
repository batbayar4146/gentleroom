import 'package:freezed_annotation/freezed_annotation.dart';

part 'products.freezed.dart';
part 'products.g.dart';

@freezed
class MainList with _$MainList {
  factory MainList(
    bool? isSuccess,
    String? message,
    List<Products>? products,
  ) = _MainList;

  factory MainList.fromJson(Map<String, dynamic> json) =>
      _$MainListFromJson(json);
}

@freezed
class Products with _$Products {
  factory Products(
    String? id,
    String? type_id,
    String? photo,
    String? title,
    String? price1,
    String? price2,
    String? price3,
    String? sale,
    String? sold_single,
    String? sold_double,
    String? sold,
    String? shine,
    String? soon,
    List<Photos>? photos,
  ) = _Products;

  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);
}

@freezed
class Photos with _$Photos {
  factory Photos(
    String? id,
    String? pid,
    String? photo,
  ) = _Photos;

  factory Photos.fromJson(Map<String, dynamic> json) => _$PhotosFromJson(json);
}
