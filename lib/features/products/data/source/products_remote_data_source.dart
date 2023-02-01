import 'package:dio/dio.dart';
import 'package:hand_made/core/constants.dart';
import 'package:hand_made/features/products/data/model/response/response_products_model.dart';

abstract class ProductsRemoteDataSource {
  Future<ResponseProductsModel> getProducts();
}

class ProductsRemoteData implements ProductsRemoteDataSource {
  final Dio dio;

  ProductsRemoteData({
    required this.dio,
  });

  @override
  Future<ResponseProductsModel> getProducts() async {
    try {
      final response = await dio.get('${apiUrl}');



      return ResponseProductsModel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
