import 'package:flutter/material.dart';
import 'dart:math';

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
    return GridView.builder(
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)));
        }
    );
  }
}

class GridViewDemo2 extends StatelessWidget {
  const GridViewDemo2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 2
        ),
        children: List.generate(100, (index){
          return Container(color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)));
        }),
      ),
    );
  }
}

class GridViewDemo1 extends StatelessWidget {
  const GridViewDemo1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 0.8,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8
        ),
        children: List.generate(100, (index){
          return Container(color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)));
        }),
      ),
    );
  }
}