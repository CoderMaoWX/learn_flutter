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
        title: Text("勾选框例子"),
      ),
      body: WXPageBody(),
    );
  }
}

class WXPageBody extends StatefulWidget {
  @override
  _WXPageBodyState createState() => _WXPageBodyState();
}

class _WXPageBodyState extends State<WXPageBody> {
  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
            value: flag,
            onChanged: (value){
              setState(() {
                flag = value!;
              });
            },
          ),
          Text(
            "同意协议勾选框",
            style: TextStyle(
                fontSize: 30,
                color: Colors.black
            ),
          )
        ],
      ),
    );
  }
}

