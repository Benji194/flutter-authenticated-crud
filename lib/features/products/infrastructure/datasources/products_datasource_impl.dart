import 'package:teslo_shop/features/products/domain/domain.dart';

class ProductsDatasourceImpl  extends ProductsDatasource {
  @override
  Future<Product> createUpdateProduct(Map<String, dynamic> productLike) {
    // TODO: implement createUpdate
    throw UnimplementedError();
  }

  @override
  Future<Product> getProductById(String id) {
    // TODO: implement getProductById
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> getProductsByPage({int limit = 10, int offset = 0}) {
    // TODO: implement getProductsByPage
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> searchProductByTem(String term) {
    // TODO: implement searchProductByTem
    throw UnimplementedError();
  }

}