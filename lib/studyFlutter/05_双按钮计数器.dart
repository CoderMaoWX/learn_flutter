import 'package:flutter/material.dart';

main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WXHomePage(),
    );
  }
}

class WXHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "双按钮计数器",
          style: TextStyle(
              fontSize: 20,
              color: Colors.amberAccent
          ),
        ),
      ),
      body: WXHomePageBody("你好啊,李银河"),
    );
  }
}
class WXHomePageBody extends StatefulWidget {
  final String message;
  WXHomePageBody(this.message);

  @override
  _WXHomePageBodyState createState() => _WXHomePageBodyState();
}

class _WXHomePageBodyState extends State<WXHomePageBody> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _getRaseButton(true),
              _getRaseButton(false),
            ],
          ),
          Text("计数器操作: $count", style: TextStyle(
              fontSize: 25,
              color: Colors.blue
          )),
          Text("传递过来的信息: ${widget.message}")
        ],
      ),
    );
  }

  RawMaterialButton _getRaseButton(bool isAdd) {
    return RawMaterialButton(
        fillColor: isAdd ? Colors.red : Colors.blue,
        child: Text(
          isAdd ? "+" : "-",
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
          ),
        ),
        onPressed: () {
          setState(() {
            if (isAdd) {
              count++;
            } else {
              count--;
            }
          });
        });
  }
}