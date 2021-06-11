import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/douban/model/SubjectModel.dart';
import 'package:learn_flutter/headfiles/HttpRequest.dart';
import 'package:learn_flutter/headfiles/global.dart';
import 'dart:convert' show json;

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
  List<Subject> movies = [];

  @override
  void initState() {
    super.initState();
    getHomeData();
    // getLocalHomeData();
  }

  //模拟网络请求
  void getHomeData() {
    final movieURL = "/top250.json?start=0&count=${HomeConfig.movieCount}";
    HttpRequest.request(movieURL).then((result) {
      print("请求网络豆瓣主页返回数据: $result");
      var resultList = result['subjects'];
      setState(() {
        movies = resultList.map<Subject>((item) => Subject.fromMap(item)).toList();
      });
    });
  }

  //加载本地json
  void getLocalHomeData() async {
    String data = await DefaultAssetBundle.of(context).loadString("assets/json/top250.json");
    final result = json.decode(data);
    print("请求本地豆瓣主页返回数据: $result");
    var resultList = result['subjects'];
    setState(() {
      movies = resultList.map<Subject>((item) => Subject.fromMap(item)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
            title: Text(movies[index].title),
            leading: Image.network(movies[index].images.medium)
        );
      }
    );
  }
}
