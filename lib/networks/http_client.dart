import 'package:digisalad_code_test_vicksonng/extensions/response_extension.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

export 'package:dio/dio.dart';

class ItunesHttpClient {
  final Dio dio = Dio();

  Dio get instance => dio;

  void init() {
    dio.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest: (options, handler) {
          _logDioRequest(options);
          return handler.next(options);
        },
        onResponse: (response, handler) {
          _logDioResponse(response);
          return handler.next(response.decodeData());
        },
        onError: (DioException ex, handler) {
          _logDioException(ex);
          return handler.next(ex);
        },
      ),
    );
  }

  void _logDioRequest(RequestOptions options) {
    GetIt.I<Logger>().d(
      '*** Request ***\n'
      'uri: ${options.uri}\n'
      'method: ${options.method}\n'
      'headers: ${options.headers}\n'
      'params: ${options.queryParameters}\n'
      'data: ${options.data}',
    );
  }

  void _logDioResponse(Response<dynamic> response) {
    GetIt.I<Logger>().d(
      '*** Response ***\n'
      'uri: ${response.realUri}\n'
      'statusCode: ${response.statusCode}\n'
      'data: ${response.data}',
    );
  }

  void _logDioException(DioException ex) {
    GetIt.I<Logger>().e(
      '*** Error ***\n'
      'Status code: ${ex.response?.statusCode}\n'
      'Dio Error Type: ${ex.type}\n'
      'Dio Error Message: ${ex.message}\n'
      'Dio Error Data: ${ex.response?.data}',
    );
  }
}
