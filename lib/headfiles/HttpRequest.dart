import 'package:dio/dio.dart';
import 'global.dart';

//网络请求封装方法
class HttpRequest {
  static final BaseOptions baseOptions = BaseOptions(
    baseUrl: HttpConfig.doubanBaseURL,
    connectTimeout: HttpConfig.timeout,
  );
  static final Dio dio = Dio(baseOptions);

  static Future<T> request<T>(String url, {
    String method = "get",
    Map<String, dynamic>? params,
    Interceptor? inter}) async {

    final options = Options(method: method);
    Interceptor dInter = InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
          print('请求拦截: [${options.method}] => PATH: ${options.path}');
          return handler.next(options); //continue
        },
        onResponse: (response, handler) {
          print('响应拦截: [${response.statusCode}] => PATH: ${response.requestOptions.path}');
          return handler.next(response); //continue
        },
        onError: (e, handler) {
          print('错误拦截: [${e.response?.statusCode}] => PATH: ${e.requestOptions.path}');
          return handler.next(e); //continue
        }
    );

    // 添加所有拦截器
    List<Interceptor> inters = [dInter];
    // 请求单独拦截器
    if (inter != null) {
      inters.add(inter);
    }
    // 统一添加到拦截器中
    dio.interceptors.addAll(inters);
    try {
      Response response = await dio.request(url, queryParameters: params, options: options);
      return response.data;
    } on DioError catch (e) {
      return Future.error(e);
    }

  }
}