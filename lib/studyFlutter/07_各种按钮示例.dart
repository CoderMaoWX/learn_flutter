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
    return Center(
      child: Column(
        children: [
          //1.MaterialButton
          MaterialButton(
            color: Colors.red,
            textColor: Colors.green,
            onPressed: () {
              print("点击了MaterialButton按钮");
            },
            child: Text(
              "ZAFUL",
              style: TextStyle(
                  color: Colors.amber
              ),
            ),
          ),

          //2.TextButton
          TextButton(
              onPressed: (){
                print("点击了TextButton按钮");
              },
              child: Icon(Icons.favorite, color: Colors.red,)
          ),

          //3.ElevatedButton
          ElevatedButton(
              onPressed: () {
                print("点击了ElevatedButton按钮");
              },
              child: Image(
                image: AssetImage("assets/images/author.png"),
              )),

          //4.OutlinedButton
          OutlinedButton(
              onPressed: () {
                print("点击了OutlinedButton按钮");
              },
              child: Text("Text"))
        ],
      ),
    );
  }
}