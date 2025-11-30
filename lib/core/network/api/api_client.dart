import 'dart:async';
import 'dart:developer' as logger;

import 'package:brain_forge_movies/app/environment_config.dart';
import 'package:brain_forge_movies/core/error/failures.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiClient {
  ApiClient(String apiUrl) : _dio = _createDio(apiUrl);

  final Dio _dio;

  static Dio _createDio(String url) {
    return Dio(
      BaseOptions(
        contentType: 'application/json',
        connectTimeout: Duration(seconds: 10),
        receiveTimeout: Duration(seconds: 10),
        baseUrl: url,
        headers: {
          'Authorization': 'Bearer ${EnvironmentConfig.movie_api_auth_token}',
          'Accept': 'application/json',
        },
      ),
    )..interceptors.add(_getPrettyLoggerInterceptor());
  }

  static PrettyDioLogger _getPrettyLoggerInterceptor() => PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
    responseBody: true,
    responseHeader: false,
    error: true,
    compact: true,
    maxWidth: 120,
  );

  Future<dynamic> get(String url, {Map<String, dynamic>? params}) {
    return _wrapApiRequest(
      _dio.get(url, queryParameters: params),
      endpoint: url,
    );
  }

  Future<dynamic> post(String url, String body) {
    return _wrapApiRequest(
      _dio.post(url, data: body),
      endpoint: url,
    );
  }

  Future<dynamic> _wrapApiRequest(
      Future<Response<dynamic>> apiCall, {
        String? endpoint,
      }) async {
    try {
      final response = await apiCall;

      // Handle HTTP error responses
      final status = response.statusCode ?? 0;
      if (status >= 400) {
        throw ServerFailure(
          statusCode: status,
          errorMessage: _extractErrorMessage(response.data),
          reason: endpoint,
        );
      }

      return response.data;
    } on DioException catch (e) {
      logger.log(e.toString());

      switch (e.type) {
        case DioExceptionType.badResponse:
          return _handleBadResponse(e, endpoint);

        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.connectionError:
          throw NoInternetConnectionFailure();

        default:
          throw ClientFailure(e, reason: endpoint);
      }
    } catch (e) {
      logger.log(e.toString());
      throw ClientFailure(e, reason: 'error while calling $endpoint');
    }
  }

  Never _handleBadResponse(DioException e, String? endpoint) {
    final statusCode = e.response?.statusCode;
    final data = e.response?.data;

    throw ServerFailure(
      statusCode: statusCode,
      errorMessage: _extractErrorMessage(data),
      reason: endpoint,
    );
  }

  /// Safely extracts an error message from any response type.
  String _extractErrorMessage(dynamic data) {
    if (data == null) return 'Unknown server error';

    try {
      if (data is Map && data['message'] != null) {
        return data['message'].toString();
      }
      return data.toString();
    } catch (_) {
      return 'Unknown server error';
    }
  }
}
