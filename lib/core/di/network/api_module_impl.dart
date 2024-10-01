import 'package:archi_clean_gherkin/core/di/network/api_client.dart';
import 'package:archi_clean_gherkin/injection.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio/src/dio.dart' show Dio;
import 'package:injectable/injectable.dart';

import '../di_module.dart';
import 'api_module.dart';

@dev
@recette
@production
@Singleton(as: ApiModule)
class ApiModuleImpl implements ApiModule {
  late final Dio _dio;
  late final ApiClient _client;

  ApiModuleImpl(Configuration configuration) {
    var cache = CacheOptions(
      store: MemCacheStore(),
      policy: CachePolicy.request,
      hitCacheOnErrorExcept: [401, 403],
    );
    _dio = Dio()
      ..interceptors.addAll([
        DioCacheInterceptor(options: cache),
      ]);
    _client = ApiClient(_dio, baseUrl: configuration.apiBaseUrl);
  }
  @override
  ApiClient get client => _client;

  @override
  Dio get dio => _dio;

}