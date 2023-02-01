// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_products_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseProductsModel _$ResponseProductsModelFromJson(
    Map<String, dynamic> json) {
  return _ResponseProductsModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseProductsModel {
  dynamic get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseProductsModelCopyWith<ResponseProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseProductsModelCopyWith<$Res> {
  factory $ResponseProductsModelCopyWith(ResponseProductsModel value,
          $Res Function(ResponseProductsModel) then) =
      _$ResponseProductsModelCopyWithImpl<$Res, ResponseProductsModel>;
  @useResult
  $Res call({dynamic products});
}

/// @nodoc
class _$ResponseProductsModelCopyWithImpl<$Res,
        $Val extends ResponseProductsModel>
    implements $ResponseProductsModelCopyWith<$Res> {
  _$ResponseProductsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseProductsModelCopyWith<$Res>
    implements $ResponseProductsModelCopyWith<$Res> {
  factory _$$_ResponseProductsModelCopyWith(_$_ResponseProductsModel value,
          $Res Function(_$_ResponseProductsModel) then) =
      __$$_ResponseProductsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic products});
}

/// @nodoc
class __$$_ResponseProductsModelCopyWithImpl<$Res>
    extends _$ResponseProductsModelCopyWithImpl<$Res, _$_ResponseProductsModel>
    implements _$$_ResponseProductsModelCopyWith<$Res> {
  __$$_ResponseProductsModelCopyWithImpl(_$_ResponseProductsModel _value,
      $Res Function(_$_ResponseProductsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_$_ResponseProductsModel(
      products: freezed == products ? _value.products! : products,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseProductsModel implements _ResponseProductsModel {
  const _$_ResponseProductsModel({this.products = const <ProductEntity>[]});

  factory _$_ResponseProductsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseProductsModelFromJson(json);

  @override
  @JsonKey()
  final dynamic products;

  @override
  String toString() {
    return 'ResponseProductsModel(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseProductsModel &&
            const DeepCollectionEquality().equals(other.products, products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseProductsModelCopyWith<_$_ResponseProductsModel> get copyWith =>
      __$$_ResponseProductsModelCopyWithImpl<_$_ResponseProductsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseProductsModelToJson(
      this,
    );
  }
}

abstract class _ResponseProductsModel implements ResponseProductsModel {
  const factory _ResponseProductsModel({final dynamic products}) =
      _$_ResponseProductsModel;

  factory _ResponseProductsModel.fromJson(Map<String, dynamic> json) =
      _$_ResponseProductsModel.fromJson;

  @override
  dynamic get products;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseProductsModelCopyWith<_$_ResponseProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
