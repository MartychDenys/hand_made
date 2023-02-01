import 'package:hand_made/features/products/domain/repositories/products_repository.dart';

class ProductsUsecase {
  final ProductsRepository productsRepository;

  ProductsUsecase({
    required this.productsRepository,
  });

  Future<void> call() async {
    try {
      final products = await productsRepository.getAllProducts();

    } catch (e) {

    }
  }
}
