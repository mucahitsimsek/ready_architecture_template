import 'package:architecture_template/product/service/manager/product_service_manager.dart';
import 'package:get_it/get_it.dart';

/// ProductStateContainer is a dependency injection class for product
final class ProductStateContainer {
  ///ProductStateContainer is a state container class for product
  ProductStateContainer._();
  static final _getIt = GetIt.I;

  ///Product core required network manager
  static void setup() {
    _getIt
        .registerSingleton<ProductNetworkManager>(ProductNetworkManager.base());
  }

  static T read<T extends Object>() => _getIt<T>();
}
