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
      body: WXHomePageBody(),
    );
  }
}
class WXHomePageBody extends StatefulWidget {
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
          ),)
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


