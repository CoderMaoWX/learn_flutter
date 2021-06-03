import 'package:dio/dio.dart';

class GlobalClass {
  static String imageURL =
      "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3821697285,1522267493&fm=26&gp=0.jpg";
  static String imageURL2 =
      "https://flutterchina.club/images/assets-and-images/launch-screen.png";
}

class HomeConfig {
  static const int movieCount = 20;
}

class HttpConfig {
  static const String baseURL = "http://httpbin.org";
  static const int timeout = 5000;
}

//网络请求封装方法
class HttpRequest {
  static final BaseOptions baseOptions = BaseOptions(
    baseUrl: HttpConfig.baseURL,
    connectTimeout: HttpConfig.timeout,
  );
  static final Dio dio = Dio(baseOptions);

  // staticga
}
