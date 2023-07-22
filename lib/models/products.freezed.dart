// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainList _$MainListFromJson(Map<String, dynamic> json) {
  return _MainList.fromJson(json);
}

/// @nodoc
mixin _$MainList {
  bool? get isSuccess => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<Products>? get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainListCopyWith<MainList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainListCopyWith<$Res> {
  factory $MainListCopyWith(MainList value, $Res Function(MainList) then) =
      _$MainListCopyWithImpl<$Res, MainList>;
  @useResult
  $Res call({bool? isSuccess, String? message, List<Products>? products});
}

/// @nodoc
class _$MainListCopyWithImpl<$Res, $Val extends MainList>
    implements $MainListCopyWith<$Res> {
  _$MainListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = freezed,
    Object? message = freezed,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Products>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainListCopyWith<$Res> implements $MainListCopyWith<$Res> {
  factory _$$_MainListCopyWith(
          _$_MainList value, $Res Function(_$_MainList) then) =
      __$$_MainListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isSuccess, String? message, List<Products>? products});
}

/// @nodoc
class __$$_MainListCopyWithImpl<$Res>
    extends _$MainListCopyWithImpl<$Res, _$_MainList>
    implements _$$_MainListCopyWith<$Res> {
  __$$_MainListCopyWithImpl(
      _$_MainList _value, $Res Function(_$_MainList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = freezed,
    Object? message = freezed,
    Object? products = freezed,
  }) {
    return _then(_$_MainList(
      freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Products>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainList implements _MainList {
  _$_MainList(this.isSuccess, this.message, final List<Products>? products)
      : _products = products;

  factory _$_MainList.fromJson(Map<String, dynamic> json) =>
      _$$_MainListFromJson(json);

  @override
  final bool? isSuccess;
  @override
  final String? message;
  final List<Products>? _products;
  @override
  List<Products>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MainList(isSuccess: $isSuccess, message: $message, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainList &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isSuccess, message,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainListCopyWith<_$_MainList> get copyWith =>
      __$$_MainListCopyWithImpl<_$_MainList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainListToJson(
      this,
    );
  }
}

abstract class _MainList implements MainList {
  factory _MainList(final bool? isSuccess, final String? message,
      final List<Products>? products) = _$_MainList;

  factory _MainList.fromJson(Map<String, dynamic> json) = _$_MainList.fromJson;

  @override
  bool? get isSuccess;
  @override
  String? get message;
  @override
  List<Products>? get products;
  @override
  @JsonKey(ignore: true)
  _$$_MainListCopyWith<_$_MainList> get copyWith =>
      throw _privateConstructorUsedError;
}

Products _$ProductsFromJson(Map<String, dynamic> json) {
  return _Products.fromJson(json);
}

/// @nodoc
mixin _$Products {
  String? get id => throw _privateConstructorUsedError;
  String? get type_id => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get price1 => throw _privateConstructorUsedError;
  String? get price2 => throw _privateConstructorUsedError;
  String? get price3 => throw _privateConstructorUsedError;
  String? get sale => throw _privateConstructorUsedError;
  String? get sold_single => throw _privateConstructorUsedError;
  String? get sold_double => throw _privateConstructorUsedError;
  String? get sold => throw _privateConstructorUsedError;
  String? get shine => throw _privateConstructorUsedError;
  String? get soon => throw _privateConstructorUsedError;
  List<Photos>? get photos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsCopyWith<Products> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsCopyWith<$Res> {
  factory $ProductsCopyWith(Products value, $Res Function(Products) then) =
      _$ProductsCopyWithImpl<$Res, Products>;
  @useResult
  $Res call(
      {String? id,
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
      List<Photos>? photos});
}

/// @nodoc
class _$ProductsCopyWithImpl<$Res, $Val extends Products>
    implements $ProductsCopyWith<$Res> {
  _$ProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type_id = freezed,
    Object? photo = freezed,
    Object? title = freezed,
    Object? price1 = freezed,
    Object? price2 = freezed,
    Object? price3 = freezed,
    Object? sale = freezed,
    Object? sold_single = freezed,
    Object? sold_double = freezed,
    Object? sold = freezed,
    Object? shine = freezed,
    Object? soon = freezed,
    Object? photos = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type_id: freezed == type_id
          ? _value.type_id
          : type_id // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price1: freezed == price1
          ? _value.price1
          : price1 // ignore: cast_nullable_to_non_nullable
              as String?,
      price2: freezed == price2
          ? _value.price2
          : price2 // ignore: cast_nullable_to_non_nullable
              as String?,
      price3: freezed == price3
          ? _value.price3
          : price3 // ignore: cast_nullable_to_non_nullable
              as String?,
      sale: freezed == sale
          ? _value.sale
          : sale // ignore: cast_nullable_to_non_nullable
              as String?,
      sold_single: freezed == sold_single
          ? _value.sold_single
          : sold_single // ignore: cast_nullable_to_non_nullable
              as String?,
      sold_double: freezed == sold_double
          ? _value.sold_double
          : sold_double // ignore: cast_nullable_to_non_nullable
              as String?,
      sold: freezed == sold
          ? _value.sold
          : sold // ignore: cast_nullable_to_non_nullable
              as String?,
      shine: freezed == shine
          ? _value.shine
          : shine // ignore: cast_nullable_to_non_nullable
              as String?,
      soon: freezed == soon
          ? _value.soon
          : soon // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photos>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductsCopyWith<$Res> implements $ProductsCopyWith<$Res> {
  factory _$$_ProductsCopyWith(
          _$_Products value, $Res Function(_$_Products) then) =
      __$$_ProductsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
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
      List<Photos>? photos});
}

/// @nodoc
class __$$_ProductsCopyWithImpl<$Res>
    extends _$ProductsCopyWithImpl<$Res, _$_Products>
    implements _$$_ProductsCopyWith<$Res> {
  __$$_ProductsCopyWithImpl(
      _$_Products _value, $Res Function(_$_Products) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type_id = freezed,
    Object? photo = freezed,
    Object? title = freezed,
    Object? price1 = freezed,
    Object? price2 = freezed,
    Object? price3 = freezed,
    Object? sale = freezed,
    Object? sold_single = freezed,
    Object? sold_double = freezed,
    Object? sold = freezed,
    Object? shine = freezed,
    Object? soon = freezed,
    Object? photos = freezed,
  }) {
    return _then(_$_Products(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == type_id
          ? _value.type_id
          : type_id // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == price1
          ? _value.price1
          : price1 // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == price2
          ? _value.price2
          : price2 // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == price3
          ? _value.price3
          : price3 // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == sale
          ? _value.sale
          : sale // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == sold_single
          ? _value.sold_single
          : sold_single // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == sold_double
          ? _value.sold_double
          : sold_double // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == sold
          ? _value.sold
          : sold // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == shine
          ? _value.shine
          : shine // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == soon
          ? _value.soon
          : soon // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photos>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Products implements _Products {
  _$_Products(
      this.id,
      this.type_id,
      this.photo,
      this.title,
      this.price1,
      this.price2,
      this.price3,
      this.sale,
      this.sold_single,
      this.sold_double,
      this.sold,
      this.shine,
      this.soon,
      final List<Photos>? photos)
      : _photos = photos;

  factory _$_Products.fromJson(Map<String, dynamic> json) =>
      _$$_ProductsFromJson(json);

  @override
  final String? id;
  @override
  final String? type_id;
  @override
  final String? photo;
  @override
  final String? title;
  @override
  final String? price1;
  @override
  final String? price2;
  @override
  final String? price3;
  @override
  final String? sale;
  @override
  final String? sold_single;
  @override
  final String? sold_double;
  @override
  final String? sold;
  @override
  final String? shine;
  @override
  final String? soon;
  final List<Photos>? _photos;
  @override
  List<Photos>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Products(id: $id, type_id: $type_id, photo: $photo, title: $title, price1: $price1, price2: $price2, price3: $price3, sale: $sale, sold_single: $sold_single, sold_double: $sold_double, sold: $sold, shine: $shine, soon: $soon, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Products &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type_id, type_id) || other.type_id == type_id) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price1, price1) || other.price1 == price1) &&
            (identical(other.price2, price2) || other.price2 == price2) &&
            (identical(other.price3, price3) || other.price3 == price3) &&
            (identical(other.sale, sale) || other.sale == sale) &&
            (identical(other.sold_single, sold_single) ||
                other.sold_single == sold_single) &&
            (identical(other.sold_double, sold_double) ||
                other.sold_double == sold_double) &&
            (identical(other.sold, sold) || other.sold == sold) &&
            (identical(other.shine, shine) || other.shine == shine) &&
            (identical(other.soon, soon) || other.soon == soon) &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type_id,
      photo,
      title,
      price1,
      price2,
      price3,
      sale,
      sold_single,
      sold_double,
      sold,
      shine,
      soon,
      const DeepCollectionEquality().hash(_photos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductsCopyWith<_$_Products> get copyWith =>
      __$$_ProductsCopyWithImpl<_$_Products>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductsToJson(
      this,
    );
  }
}

abstract class _Products implements Products {
  factory _Products(
      final String? id,
      final String? type_id,
      final String? photo,
      final String? title,
      final String? price1,
      final String? price2,
      final String? price3,
      final String? sale,
      final String? sold_single,
      final String? sold_double,
      final String? sold,
      final String? shine,
      final String? soon,
      final List<Photos>? photos) = _$_Products;

  factory _Products.fromJson(Map<String, dynamic> json) = _$_Products.fromJson;

  @override
  String? get id;
  @override
  String? get type_id;
  @override
  String? get photo;
  @override
  String? get title;
  @override
  String? get price1;
  @override
  String? get price2;
  @override
  String? get price3;
  @override
  String? get sale;
  @override
  String? get sold_single;
  @override
  String? get sold_double;
  @override
  String? get sold;
  @override
  String? get shine;
  @override
  String? get soon;
  @override
  List<Photos>? get photos;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsCopyWith<_$_Products> get copyWith =>
      throw _privateConstructorUsedError;
}

Photos _$PhotosFromJson(Map<String, dynamic> json) {
  return _Photos.fromJson(json);
}

/// @nodoc
mixin _$Photos {
  String? get id => throw _privateConstructorUsedError;
  String? get pid => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotosCopyWith<Photos> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotosCopyWith<$Res> {
  factory $PhotosCopyWith(Photos value, $Res Function(Photos) then) =
      _$PhotosCopyWithImpl<$Res, Photos>;
  @useResult
  $Res call({String? id, String? pid, String? photo});
}

/// @nodoc
class _$PhotosCopyWithImpl<$Res, $Val extends Photos>
    implements $PhotosCopyWith<$Res> {
  _$PhotosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pid = freezed,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      pid: freezed == pid
          ? _value.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PhotosCopyWith<$Res> implements $PhotosCopyWith<$Res> {
  factory _$$_PhotosCopyWith(_$_Photos value, $Res Function(_$_Photos) then) =
      __$$_PhotosCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? pid, String? photo});
}

/// @nodoc
class __$$_PhotosCopyWithImpl<$Res>
    extends _$PhotosCopyWithImpl<$Res, _$_Photos>
    implements _$$_PhotosCopyWith<$Res> {
  __$$_PhotosCopyWithImpl(_$_Photos _value, $Res Function(_$_Photos) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pid = freezed,
    Object? photo = freezed,
  }) {
    return _then(_$_Photos(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == pid
          ? _value.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Photos implements _Photos {
  _$_Photos(this.id, this.pid, this.photo);

  factory _$_Photos.fromJson(Map<String, dynamic> json) =>
      _$$_PhotosFromJson(json);

  @override
  final String? id;
  @override
  final String? pid;
  @override
  final String? photo;

  @override
  String toString() {
    return 'Photos(id: $id, pid: $pid, photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Photos &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pid, pid) || other.pid == pid) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, pid, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhotosCopyWith<_$_Photos> get copyWith =>
      __$$_PhotosCopyWithImpl<_$_Photos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotosToJson(
      this,
    );
  }
}

abstract class _Photos implements Photos {
  factory _Photos(final String? id, final String? pid, final String? photo) =
      _$_Photos;

  factory _Photos.fromJson(Map<String, dynamic> json) = _$_Photos.fromJson;

  @override
  String? get id;
  @override
  String? get pid;
  @override
  String? get photo;
  @override
  @JsonKey(ignore: true)
  _$$_PhotosCopyWith<_$_Photos> get copyWith =>
      throw _privateConstructorUsedError;
}
