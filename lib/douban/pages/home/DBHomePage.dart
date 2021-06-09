import 'package:flutter/material.dart';
import 'package:learn_flutter/headfiles/HttpRequest.dart';
import 'package:learn_flutter/headfiles/global.dart';

class DBHomePage extends StatelessWidget {
  String title = "";
  DBHomePage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: WXHomeContent()
    );
  }
}

class WXHomeContent extends StatefulWidget {
  @override
  _WXHomeContentState createState() => _WXHomeContentState();
}

class _WXHomeContentState extends State<WXHomeContent> {

  @override
  void initState() {
    super.initState();
    getHomeData();
  }

  void getHomeData() {
    final movieURL = "/movie/top250?start=0&count=${HomeConfig.movieCount}";
    HttpRequest.request(movieURL).then((value) {
      print("请求豆瓣主页返回数据: $value");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white
    );
  }
}
