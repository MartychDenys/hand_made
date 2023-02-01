import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hand_made/features/products/domain/entities/product_entity.dart';

part 'response_products_model.freezed.dart';
part 'response_products_model.g.dart';

@freezed
class ResponseProductsModel with _$ResponseProductsModel{
  const factory ResponseProductsModel({
      @Default(<ProductEntity>[]) products,
  }) = _ResponseProductsModel;

  factory ResponseProductsModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseProductsModelFromJson(json);
}