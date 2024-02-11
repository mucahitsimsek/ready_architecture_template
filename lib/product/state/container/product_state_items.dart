import 'package:architecture_template/product/service/manager/product_service_manager.dart';
import 'package:architecture_template/product/state/container/product_state_container.dart';

///ProductStateContainer is a state container class for product
final class ProductStateItems {
  ///ProductStateContainer is a state container class for product
  ProductStateItems._();

  ///ProductStateContainer is a state container class for product
  static ProductNetworkManager get networkManager =>
      ProductStateContainer.read<ProductNetworkManager>();
}
