import 'package:dio/dio.dart';
import 'package:gentleroom/services/custom_exception.dart';

class HttpHelper {
  Future<dynamic> getUrl({String? url}) async {
    var dio = _createDio();
    dio.options.headers['content-Type'] = 'application/json; charset=utf-8';
    dio.options.headers['Access-Control-Allow-Origin'] = "*";
    try {
      var response = await dio.get(url!);
      return response.data;
    } on DioError catch (ex) {
      print(ex.message.toString());
      throw CustomException(errorMsg: ex.message.toString());
    } catch (ex) {
      print(ex.toString());
      throw CustomException(errorMsg: ex.toString());
    }
  }

  Future<dynamic> postUrl({String? url, dynamic body, String? token}) async {
    var dio = _createDio();
    dio.options.headers['content-Type'] = 'application/json; charset=utf-8';
    dio.options.headers['Access-Control-Allow-Origin'] = "*";
    try {
      var response = await dio.post(url!, data: body);

      return response.data;
    } on DioError catch (ex) {
      // print(ex.response!.data.toString());
      throw CustomException(errorMsg: ex.message.toString());
    } catch (ex) {
      // print(ex.toString());
      throw CustomException(errorMsg: ex.toString());
    }
  }

  Future<dynamic> putUrl({String? url, dynamic body}) async {
    var dio = _createDio();
    try {
      var response = await dio.put(url!, data: body);
      return response.data;
    } on DioError catch (ex) {
      throw CustomException(errorMsg: ex.message.toString());
    } catch (ex) {
      throw CustomException(errorMsg: ex.toString());
    }
  }

  Future<dynamic> deleteUrl({String? url, dynamic body}) async {
    var dio = _createDio();
    try {
      var response = await dio.delete(url!, data: body);
      return response.data;
    } on DioError catch (ex) {
      throw CustomException(errorMsg: ex.message.toString());
    } catch (ex) {
      throw CustomException(errorMsg: ex.toString());
    }
  }

  Dio _createDio() {
    var dio = Dio();
    dio.options.baseUrl = 'https://www.gentleroom.mn/api/';
    dio.options.headers['content-Type'] = 'application/json; charset=utf-8';
    dio.options.headers['Access-Control-Allow-Origin'] = "*";
    dio.options.connectTimeout = const Duration(seconds: 300);
    dio.options.receiveTimeout = const Duration(seconds: 300);

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          // Do something before request is sent
          return handler.next(options); //continue
          // If you want to resolve the request with some custom data，
          // you can resolve a `Response` object eg: `handler.resolve(response)`.
          // If you want to reject the request with a error message,
          // you can reject a `DioError` object eg: `handler.reject(dioError)`
        },
        onResponse: (response, handler) {
          // if (response.data != null && response.data["errorCode"] == "401") {

          // }
          // Do something with response data
          return handler.next(response); // continue
          // If you want to reject the request with a error message,
          // you can reject a `DioError` object eg: `handler.reject(dioError)`
        },
        onError: (DioError e, handler) {
          // Do something with response error
          return handler.next(e); //continue
          // If you want to resolve the request with some custom data，
          // you can resolve a `Response` object eg: `handler.resolve(response)`.
        },
      ),
    );
    return dio;
  }
}
