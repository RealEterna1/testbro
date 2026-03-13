import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  void initState() {
    super.initState();
    _getChannels();
  }

  void _getChannels() async {
    DioUtils util = DioUtils();
    Response<dynamic> result = await util.get("channels");
    Map<String, dynamic> res = result.data as Map<String, dynamic>;

    print(res["data"]["channels"]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("频道管理"))),
        body: Text("内容"),
      ),
    );
  }
}

class DioUtils {
  final Dio _dio = Dio();
  DioUtils() {
    _dio.options
      ..baseUrl = "https://geek.itheima.net/v1_0/"
      ..connectTimeout = Duration(seconds: 10)
      ..sendTimeout = Duration(seconds: 10)
      ..receiveTimeout = Duration(seconds: 10);
    _addIntercepter();
  }
  void _addIntercepter() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onError: (context, handler) {
          handler.reject(context);
        },
        onRequest: (context, handler) {
          handler.next(context);
        },
        onResponse: (context, handler) {
          if (context.statusCode! >= 200 && context.statusCode! < 300) {
            handler.next(context);
            return;
          }
          handler.reject(DioException(requestOptions: context.requestOptions));
        },
      ),
    );
  }

  Future<Response<dynamic>> get(String url, {Map<String, dynamic>? padrams}) {
    return _dio.get(url, queryParameters: padrams);
  }
}
