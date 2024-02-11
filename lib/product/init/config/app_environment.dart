import 'package:gen/gen.dart';

///app environment
final class AppEnvironment {
  ///app environment
  AppEnvironment.setup({required AppConfiguration configuration}) {
    _config = configuration;
  }

  ///app general environment
  AppEnvironment.general() {
    _config = ProdEnv();
  }

  static late final AppConfiguration _config;
}

///Project environment type
enum AppEnvironmentType {
  ///Project base url
  baseUrl,

  ///Project api key
  apiKey,
  ;

  ///Project environment type
  String get value {
    try {
      switch (this) {
        case AppEnvironmentType.apiKey:
          return AppEnvironment._config.apiKey;
        case AppEnvironmentType.baseUrl:
          return AppEnvironment._config.baseUrl;
      }
    } catch (e) {
      throw Exception('AppEnvironmentType is not initialized $e');
    }
  }
}
