import 'package:hand_made/features/products/domain/entities/product_entity.dart';

abstract class ProductsRepository {
  Future<List<ProductEntity>> getAllProducts();
}