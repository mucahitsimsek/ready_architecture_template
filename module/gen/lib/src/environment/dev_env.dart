import 'package:envied/envied.dart';
import 'package:gen/src/environment/app_configuration.dart';

part 'dev_env.g.dart';

///Project environment variables
@Envied(path: 'assets/env/.dev.env', obfuscate: true)
final class DevEnv implements AppConfiguration {
  ///Project base url
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _DevEnv._baseUrl;

  ///Project api key
  @EnviedField(varName: 'API_KEY')
  static final String _apiKey = _DevEnv._apiKey;

  ///Project base url
  @override
  String get baseUrl => _baseUrl;

  ///Project api key
  @override
  String get apiKey => _apiKey;
}
