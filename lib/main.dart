import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WXHomePage(),
    );
  }
}

class WXHomePage extends StatefulWidget {
  @override
  _WXHomePageState createState() => _WXHomePageState();
}

class _WXHomePageState extends State<WXHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "各种控件演练",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          _testBuildText(),
          Image(image: AssetImage("assets/images/computer.png"))
        ],
      ),
    );
  }

  Text _testBuildText() {
    return Text(
          "《定风波》 苏轼 莫听穿林打叶声，何妨吟啸且徐行。竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。",
          textAlign: TextAlign.center,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,//一行显示不下就显示三个点
          style: TextStyle(
            fontSize: 20,
            color: Colors.red,
            fontWeight: FontWeight.bold
          ),
        );
  }
}