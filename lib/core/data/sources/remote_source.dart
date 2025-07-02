import 'dart:convert';

import 'package:dio/dio.dart';

import '../../errors/failure.dart';
import '../../observers/logger.dart';

abstract class RemoteSource {
  Future<Response> post({
    required String url,
    Map<String, dynamic>? data,
    Map<String, dynamic>? headers,
    FormData? formData,
  });

  Future<Response> get({
    required String url,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    FormData? formData,
  });

  Future<Response> delete({
    required String url,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    FormData? formData,
  });

  Future<Response> put({
    required String url,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    FormData? formData,
  });
}

class RemoteSourceImpl implements RemoteSource {
  final Dio dio;

  RemoteSourceImpl({required this.dio});

  @override
  Future<Response> post({
    required String url,
    Map<String, dynamic>? data,
    Map<String, dynamic>? headers,
    FormData? formData,
  }) async {
    try {
      Logger.info("---- URL ----");
      Logger.info(url);

      Logger.info("---- DATA ----");
      Logger.info(data.toString());

      Logger.info("---- FORMDATA ----");
      Logger.info(formData?.fields.toString());

      Logger.info("---- HEADERS ----");
      // add default headers
      headers ??= {};
      headers['Content-Type'] = 'application/json';
      headers['Accept'] = 'application/json';

      Logger.info(jsonEncode(headers));

      final Response response = await dio.post(
        url,
        data: data ?? formData,
        options: Options(headers: headers),
      );

      Logger.info("---- RESPONSE ----");
      Logger.success(response.toString());

      if (response.data is Map) {
        if ((response.data as Map).keys.contains('status')) {
          final status = response.data['status'];
          if (status is int) {
            if (status != 1) {
              final message = response.data['message'];

              throw ServerFailure(code: message);
            }
          } else if (status is String) {
            if (status.toLowerCase() != 'success') {
              final message = response.data['message'];

              throw ServerFailure(code: message);
            }
          }
        }
      }

      return response;
    } on DioException catch (error) {
      Logger.info("---- ERROR RESPONSE ----");
      Logger.error(error.toString());

      rethrow;
    }
  }

  @override
  Future<Response> get({
    required String url,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    FormData? formData,
  }) async {
    try {
      Logger.info("---- URL ----");
      Logger.info(url);

      Logger.info("---- DATA ----");
      Logger.info(jsonEncode(data));

      Logger.info("---- QUERY PARAMETERS ----");
      Logger.info(jsonEncode(queryParameters));

      Logger.info("---- FORMDATA ----");
      Logger.info(formData?.files.toString());

      Logger.info("---- HEADERS ----");
      // add default headers
      headers ??= {};
      headers['Content-Type'] = 'application/json';
      headers['Accept'] = 'application/json';

      Logger.info(jsonEncode(headers));

      final response = await dio.get(
        url,
        data: data ?? formData,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );

      Logger.info("---- RESPONSE ----");
      Logger.success(response.toString());

      // check status from data
      if (response.data is Map) {
        if ((response.data as Map).keys.contains('status')) {
          final status = response.data['status'];
          if (status is int) {
            if (status != 1) {
              final message = response.data['message'];

              throw ServerFailure(code: message);
            }
          } else if (status is String) {
            if (status.toLowerCase() != 'success') {
              final message = response.data['message'];

              throw ServerFailure(code: message);
            }
          }
        }
      }

      return response;
    } on DioException catch (error) {
      Logger.info("---- ERROR RESPONSE ----");
      Logger.error(error.toString());

      rethrow;
    }
  }

  @override
  Future<Response> delete({
    required String url,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    FormData? formData,
  }) async {
    try {
      Logger.info("---- URL ----");
      Logger.info(url);

      Logger.info("---- DATA ----");
      Logger.info(jsonEncode(data));

      Logger.info("---- FORMDATA ----");
      Logger.info(formData?.files.toString());

      Logger.info("---- HEADERS ----");
      // add default headers
      headers ??= {};
      headers['Content-Type'] = 'application/json';
      headers['Accept'] = 'application/json';

      Logger.info(jsonEncode(headers));

      final response = await dio.delete(
        url,
        data: data ?? formData,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );

      Logger.info("---- RESPONSE ----");
      Logger.success(response.toString());

      // check status from data
      if (response.data is Map) {
        if ((response.data as Map).keys.contains('status')) {
          final status = response.data['status'];
          if (status is int) {
            if (status != 1) {
              final message = response.data['message'];

              throw ServerFailure(code: message);
            }
          } else if (status is String) {
            if (status.toLowerCase() != 'success') {
              final message = response.data['message'];

              throw ServerFailure(code: message);
            }
          }
        }
      }

      return response;
    } on DioException catch (error) {
      Logger.info("---- ERROR RESPONSE ----");
      Logger.error(error.toString());

      rethrow;
    }
  }

  @override
  Future<Response> put({
    required String url,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    FormData? formData,
  }) async {
    try {
      Logger.info("---- URL ----");
      Logger.info(url);

      Logger.info("---- DATA ----");
      Logger.info(jsonEncode(data));

      Logger.info("---- QUERY PARAMETERS ----");
      Logger.info(jsonEncode(queryParameters));

      Logger.info("---- FORMDATA ----");
      Logger.info(formData?.files.toString());

      Logger.info("---- HEADERS ----");
      // add default headers
      headers ??= {};
      headers['Content-Type'] = 'application/json';
      headers['Accept'] = 'application/json';

      Logger.info(jsonEncode(headers));

      final response = await dio.put(
        url,
        data: data ?? formData,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );

      Logger.info("---- RESPONSE ----");
      Logger.success(response.toString());

      // check status from data
      if (response.data is Map) {
        if ((response.data as Map).keys.contains('status')) {
          final status = response.data['status'];
          if (status is int) {
            if (status != 1) {
              final message = response.data['message'];

              throw ServerFailure(code: message);
            }
          } else if (status is String) {
            if (status.toLowerCase() != 'success') {
              final message = response.data['message'];

              throw ServerFailure(code: message);
            }
          }
        }
      }

      return response;
    } on DioException catch (error) {
      Logger.info("---- ERROR RESPONSE ----");
      Logger.error(error.toString());

      rethrow;
    }
  }
}
