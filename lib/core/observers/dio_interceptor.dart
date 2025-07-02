import 'package:dio/dio.dart';

import 'logger.dart';

/// Custom Dio interceptor for handling requests, responses, and errors
/// with proper logging and exception handling
class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    Logger.info('📤 REQUEST[${options.method}] => PATH: ${options.path}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    Logger.info(
      '📥 RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}',
    );
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final statusCode = err.response?.statusCode;
    final path = err.requestOptions.path;

    Logger.info('❌ ERROR[$statusCode] || TYPE[${err.type}] => PATH: $path');
    Logger.info('Response Data: ${err.response?.data}');

    final message = _extractErrorMessage(err);
    final exception = _createAppropriateException(err, message);

    throw exception;
  }

  /// Extracts error message from DioException response
  String? _extractErrorMessage(DioException err) {
    if (err.response?.data != null && err.response?.data is Map) {
      return err.response?.data['message'] as String?;
    }
    return null;
  }

  /// Creates appropriate exception based on DioException type and status code
  DioException _createAppropriateException(DioException err, String? message) {
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return DeadlineExceededException(requestOptions: err.requestOptions);

      case DioExceptionType.badResponse:
        return _handleBadResponse(err, message);

      case DioExceptionType.badCertificate:
      case DioExceptionType.cancel:
      case DioExceptionType.connectionError:
      case DioExceptionType.unknown:
        return NoInternetConnectionException(
          requestOptions: err.requestOptions,
        );
    }
  }

  /// Handles bad response status codes and returns appropriate exception
  DioException _handleBadResponse(DioException err, String? message) {
    final statusCode = err.response?.statusCode;
    final requestOptions = err.requestOptions;

    return switch (statusCode) {
      400 || 422 => BadRequestException(
        requestOptions: requestOptions,
        message: message,
      ),
      401 => UnauthorizedException(
        requestOptions: requestOptions,
        message: message,
      ),
      404 => NotFoundException(
        requestOptions: requestOptions,
        message: message,
      ),
      409 => ConflictException(
        requestOptions: requestOptions,
        message: message,
      ),
      500 => InternalServerErrorException(
        requestOptions: requestOptions,
        message: message,
      ),
      _ => InternalServerErrorException(
        requestOptions: requestOptions,
        message: message,
      ),
    };
  }
}

// ============================================================================
// EXCEPTION CLASSES
// ============================================================================

/// Base class for HTTP exceptions with default error messages
abstract class BaseHttpException extends DioException {
  BaseHttpException({required super.requestOptions, super.message});

  /// Default error message for this exception type
  String get defaultMessage;

  @override
  String toString() => message ?? defaultMessage;
}

/// Exception thrown when the request is malformed (400, 422)
class BadRequestException extends BaseHttpException {
  BadRequestException({required super.requestOptions, super.message});

  @override
  String get defaultMessage => 'Bad request';
}

/// Exception thrown when authentication is required (401)
class UnauthorizedException extends BaseHttpException {
  UnauthorizedException({required super.requestOptions, super.message});

  @override
  String get defaultMessage => 'Unauthorized';
}

/// Exception thrown when the requested resource is not found (404)
class NotFoundException extends BaseHttpException {
  NotFoundException({required super.requestOptions, super.message});

  @override
  String get defaultMessage => 'The requested information could not be found';
}

/// Exception thrown when there's a conflict with the current state (409)
class ConflictException extends BaseHttpException {
  ConflictException({required super.requestOptions, super.message});

  @override
  String get defaultMessage => 'Conflict occurred';
}

/// Exception thrown when there's an internal server error (500)
class InternalServerErrorException extends BaseHttpException {
  InternalServerErrorException({required super.requestOptions, super.message});

  @override
  String get defaultMessage => 'Internal server error';
}

/// Exception thrown when there's no internet connection
class NoInternetConnectionException extends DioException {
  NoInternetConnectionException({required super.requestOptions});

  @override
  String toString() => 'No internet connection detected, please try again.';
}

/// Exception thrown when the request times out
class DeadlineExceededException extends DioException {
  DeadlineExceededException({required super.requestOptions});

  @override
  String toString() => 'The connection has timed out, please try again.';
}
