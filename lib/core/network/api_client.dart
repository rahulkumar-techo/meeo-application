import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:meeo/core/storage/local_storage.dart';

class ApiClient {
  static const String defaultBaseUrl =
      'https://meeo-server.onrender.com/api/v1';

  static final ApiClient _instance = ApiClient._internal();
  factory ApiClient({String? baseUrl}) {
    if (baseUrl != null && baseUrl != _instance.baseUrl) {
      return ApiClient._internal(baseUrl: baseUrl);
    }
    return _instance;
  }

  final String baseUrl;
  late final Dio _dio;

  Dio get dio => _dio;

  /// Returns current persistent session ID from device local storage
  static String get sessionId => LocalStorage.getSessionId();

  /// Sets or updates the active session ID in device storage
  static void setSessionId(String newSessionId) {
    LocalStorage.saveSessionId(newSessionId);
  }

  ApiClient._internal({String? baseUrl})
      : baseUrl = baseUrl ?? defaultBaseUrl {
    _dio = Dio(
      BaseOptions(
        baseUrl: this.baseUrl,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
        responseType: ResponseType.json,
      ),
    );

    // Session Management Interceptor:
    // Attaches persistent 'x-session-id' to every request and saves server updates to disk
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers['x-session-id'] = sessionId;
          return handler.next(options);
        },
        onResponse: (response, handler) {
          // If server returns a canonical sessionId in payload or header, persist it
          try {
            if (response.data is Map<String, dynamic>) {
              final data = response.data as Map<String, dynamic>;
              if (data['data'] is Map<String, dynamic>) {
                final nested = data['data'] as Map<String, dynamic>;
                final receivedSessionId = nested['sessionId'] as String?;
                if (receivedSessionId != null &&
                    receivedSessionId.trim().isNotEmpty) {
                  LocalStorage.saveSessionId(receivedSessionId);
                }
              }
            }

            final headerSessionId = response.headers.value('x-session-id');
            if (headerSessionId != null && headerSessionId.trim().isNotEmpty) {
              LocalStorage.saveSessionId(headerSessionId);
            }
          } catch (_) {}
          return handler.next(response);
        },
      ),
    );

    // Logs all network calls directly to the debug console
    if (kDebugMode) {
      _dio.interceptors.add(
        LogInterceptor(
          request: true,
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          responseBody: true,
          error: true,
          logPrint: (obj) => debugPrint('[DIO-HTTP] $obj'),
        ),
      );
    }
  }

  // GET request
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    return _dio.get<T>(
      path,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
    );
  }

  // POST request
  Future<Response<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    return _dio.post<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  // PUT request
  Future<Response<T>> put<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    return _dio.put<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
    );
  }

  // PATCH request
  Future<Response<T>> patch<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    return _dio.patch<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
    );
  }

  // DELETE request
  Future<Response<T>> delete<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    return _dio.delete<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
    );
  }

  // Upload file
  Future<Response<T>> upload<T>(
    String path, {
    required FormData data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
  }) async {
    return _dio.post<T>(
      path,
      data: data,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
    );
  }
}
