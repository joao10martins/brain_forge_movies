import 'package:brain_forge_movies/app/environment_config.dart';
import 'package:brain_forge_movies/core/network/api/api_client.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ApiModule {
  @lazySingleton
  ApiClient provideApiClient() => ApiClient(EnvironmentConfig.baseUrl);
}
