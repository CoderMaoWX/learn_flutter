import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WXHomePage(),
    );
  }
}

class WXHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("基础Widget"),
      ),
      body: WXHomeContent(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => print("FloatingActionButton Click"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class WXHomeContent extends StatefulWidget {
  @override
  _WXHomeContentState createState() => _WXHomeContentState();
}

class _WXHomeContentState extends State<WXHomeContent> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(1, 1),
      widthFactor: 5,
      heightFactor: 5,
      child: Icon(Icons.pets, size: 50,),
    );
  }
}

class PaddingWidget extends StatelessWidget {
  const PaddingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30),
      child: Text(
        "你好,ZAFUL",
        style: TextStyle(
            fontSize: 30,
            color: Colors.red,
            backgroundColor: Colors.grey
        ),
      ),
    );
  }
}



class ShadowWidget extends StatelessWidget {
  const ShadowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
//      color: Colors.grey,
      width: 200,
      height: 200,
      alignment: Alignment(0, 0),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      child: Text("Hell world"),
      decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(
            color: Colors.purple,
            width: 5.0,
          ),
          boxShadow: [
            BoxShadow(color: Colors.orange, offset: Offset(10, 10), spreadRadius: 5, blurRadius: 10),
            BoxShadow(color: Colors.blue, offset: Offset(-10, 10), spreadRadius: 5, blurRadius: 10),
          ]
      ),

    );
  }
}