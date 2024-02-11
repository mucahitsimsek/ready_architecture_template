import 'package:architecture_template/product/service/manager/index.dart';
import 'package:architecture_template/product/service/manager/service_path.dart';
import 'package:gen/gen.dart';
import 'package:vexana/vexana.dart';

///LoginService is a network manager class for product
class LoginService {
  ///LoginService is a network manager class for product
  LoginService(ProductNetworkManager productNetworkManager)
      : _networkManager = productNetworkManager;

  final ProductNetworkManager _networkManager;

  ///LoginService is a network manager class for product
  Future<List<User>> users() async {
    final response = await _networkManager.send<User, List<User>>(
      ProductServicePath.posts.value,
      parseModel: User(),
      method: RequestType.GET,
    );

    return response.data ?? [];
  }
}
