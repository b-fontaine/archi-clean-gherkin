import 'package:archi_clean_gherkin/core/di/network/api_client.dart';
import 'package:dio_mocked_responses/dio_mocked_responses.dart';
import 'package:dio/src/dio.dart' show Dio;
import 'package:injectable/injectable.dart';

import '../di_module.dart';
import 'api_module.dart';

@test
@Singleton(as: ApiModule)
class ApiModuleImpl implements ApiModule {
  late final Dio _dio;
  late final ApiClient _client;

  ApiModuleImpl(Configuration configuration) {
    _dio = Dio()..interceptors.add(MockInterceptor(basePath: 'mocks/api'));
    _client = ApiClient(_dio, baseUrl: configuration.apiBaseUrl);
  }
  @override
  ApiClient get client => _client;

  @override
  Dio get dio => _dio;

}