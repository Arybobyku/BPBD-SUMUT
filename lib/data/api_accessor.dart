import 'package:bpbd/data/inteceptor.dart';
import 'package:bpbd/routes.dart';
import 'package:bpbd/setup_locator.dart';
import 'package:chopper/chopper.dart';
import 'package:bpbd/data/constants/constants.dart';
import 'package:injectable/injectable.dart';

import '../helper/my_http_overrides.dart';
import '../locatore_storage_service.dart';

part 'api_accessor.chopper.dart';

@ChopperApi(baseUrl: "")
abstract class ApiAccessor extends ChopperService {
  @Post(path: "/api/login", headers: {
    Constants.headerContentTypeText: Constants.headerApplicationJsonValue,
    Constants.headerAcceptText: Constants.headerApplicationJsonValue
  })
  Future<Response> login(
    @Body() String body,
  );

  @Post(path: "/api/register", headers: {
    Constants.headerContentTypeText: Constants.headerApplicationJsonValue,
    Constants.headerAcceptText: Constants.headerApplicationJsonValue
  })
  Future<Response> register(
    @Body() String body,
  );

  @Post(path: "/api/logout", headers: {
    Constants.headerContentTypeText: Constants.headerApplicationJsonValue,
    Constants.headerAcceptText: Constants.headerApplicationJsonValue
  })
  Future<Response> logout();

  @Get(path: "/api/user", headers: {
    Constants.headerContentTypeText: Constants.headerApplicationJsonValue,
    Constants.headerAcceptText: Constants.headerApplicationJsonValue
  })
  Future<Response> me();

  @Get(path: "/api/inventaris", headers: {
    Constants.headerContentTypeText: Constants.headerApplicationJsonValue,
    Constants.headerAcceptText: Constants.headerApplicationJsonValue
  })
  Future<Response> getAllInventaris(
      @Query("id_kota") query);

  @Get(path: "/api/peralatan", headers: {
    Constants.headerContentTypeText: Constants.headerApplicationJsonValue,
    Constants.headerAcceptText: Constants.headerApplicationJsonValue
  })
  Future<Response> getAllPeralatan(
      @Query("id_kota") query);

  @Get(path: "/api/logistiks", headers: {
    Constants.headerContentTypeText: Constants.headerApplicationJsonValue,
    Constants.headerAcceptText: Constants.headerApplicationJsonValue
  })
  Future<Response> getAllLogistiks(
      @Query("id_kota") query);

  @Get(path: "/api/banner", headers: {
    Constants.headerContentTypeText: Constants.headerApplicationJsonValue,
    Constants.headerAcceptText: Constants.headerApplicationJsonValue
  })
  Future<Response> getAllBanner();


  static ApiAccessor create() {
    final client = ChopperClient(
        baseUrl: Constants.apiBaseUrl,
        services: [
      _$ApiAccessor(),
    ], interceptors: [
      (Request request) async {
        if (request.method == HttpMethod.Post) {
          chopperLogger.info('Performed a POST request');
          chopperLogger.info('${request.url}');
          chopperLogger.info('${request.baseUrl}');
          chopperLogger.info('${request.headers}');
          chopperLogger.info('${request.parameters}');
          chopperLogger.info('${request.body}');
        }
        return request;
      },
      (Request request) async {
        if (request.method == HttpMethod.Get) {
          chopperLogger.info('Performed a GET request');
          chopperLogger.info('${request.url}');
          chopperLogger.info('${request.baseUrl}');
          chopperLogger.info('${request.headers}');
          chopperLogger.info('${request.parameters}');
          chopperLogger.info('${request.body}');
        }
        return request;
      },
      (Response response) async {
        if (response.statusCode == 404) {
          chopperLogger.severe('404 NOT FOUND');
        }
        if (response.statusCode == 401) {
          chopperLogger.severe('401 NOT FOUND');
          var storageService = locator<LocalStorageService>();
          storageService.clearPref();
          backToNavigator();
        }
        return response;
      },
      MyRequestInterceptor(),
    ]);
    return _$ApiAccessor(client);
  }
}

