import 'package:teslo_shop/features/products/domain/domain.dart';


class ProductsRepostoryImpl extends ProductsRepository {

  final ProductsDatasource datasource ;

  ProductsRepostoryImpl( this.datasource);

  

  @override
  Future<Product> createUpdateProduct(Map<String, dynamic> productLike) {
    return datasource.createUpdateProduct(productLike);
  }

  @override
  Future<Product> getProductById(String id) {
    return datasource.getProductById(id);
  }

  @override
  Future<List<Product>> getProductsByPage({int limit = 10, int offset = 0}) {
    return datasource.getProductsByPage(limit: limit , offset: offset );
  }

  @override
  Future<List<Product>> searchProductByTem(String term) {
    return datasource.searchProductByTem(term);
  }

}