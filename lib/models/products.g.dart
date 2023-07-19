// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainList _$$_MainListFromJson(Map<String, dynamic> json) => _$_MainList(
      json['isSuccess'] as bool?,
      json['message'] as String?,
      (json['products'] as List<dynamic>?)
          ?.map((e) => Products.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MainListToJson(_$_MainList instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'message': instance.message,
      'products': instance.products,
    };

_$_Products _$$_ProductsFromJson(Map<String, dynamic> json) => _$_Products(
      json['id'] as String?,
      json['type_id'] as String?,
      json['photo'] as String?,
      json['title'] as String?,
      json['price1'] as String?,
      json['price2'] as String?,
      json['price3'] as String?,
      json['sale'] as String?,
      json['sold_single'] as String?,
      json['sold_double'] as String?,
      json['sold'] as String?,
      json['shine'] as String?,
      json['soon'] as String?,
    );

Map<String, dynamic> _$$_ProductsToJson(_$_Products instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type_id': instance.type_id,
      'photo': instance.photo,
      'title': instance.title,
      'price1': instance.price1,
      'price2': instance.price2,
      'price3': instance.price3,
      'sale': instance.sale,
      'sold_single': instance.sold_single,
      'sold_double': instance.sold_double,
      'sold': instance.sold,
      'shine': instance.shine,
      'soon': instance.soon,
    };
