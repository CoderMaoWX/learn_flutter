import 'package:flutter/material.dart';

main() {
  runApp(
      MaterialApp(
          debugShowMaterialGrid: false,
          home: Scaffold(
            appBar: AppBar(
              title: Text("跨境电商品牌"),
            ),
            body: Center(
              child: Text(
                "iOS App",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.black
                ),
              ),
            ),
          )
      )
  );
}