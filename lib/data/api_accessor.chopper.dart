// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_accessor.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ApiAccessor extends ApiAccessor {
  _$ApiAccessor([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ApiAccessor;

  @override
  Future<Response<dynamic>> login(String body) {
    final $url = '/api/login';
    final $headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final $body = body;
    final $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> register(String body) {
    final $url = '/api/register';
    final $headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final $body = body;
    final $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> logout() {
    final $url = '/api/logout';
    final $headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final $request = Request(
      'POST',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> me() {
    final $url = '/api/user';
    final $headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getAllInventaris(dynamic query) {
    final $url = '/api/inventaris';
    final $params = <String, dynamic>{'id_kota': query};
    final $headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getAllPeralatan(dynamic query) {
    final $url = '/api/peralatan';
    final $params = <String, dynamic>{'id_kota': query};
    final $headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getAllLogistiks(dynamic query) {
    final $url = '/api/logistiks';
    final $params = <String, dynamic>{'id_kota': query};
    final $headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
