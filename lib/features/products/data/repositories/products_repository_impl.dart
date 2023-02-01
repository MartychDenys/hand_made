import 'package:hand_made/features/products/domain/entities/product_entity.dart';
import 'package:hand_made/features/products/domain/repositories/products_repository.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  @override
  Future<List<ProductEntity>> getAllProducts() {

    return Future(() => <ProductEntity>[]);
  }

}