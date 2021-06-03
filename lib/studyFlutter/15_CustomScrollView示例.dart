import 'dart:math';

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
//      appBar: AppBar(
//        title: Text("基础Widget"),
//      ),
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
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 300,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Hello World"),
            centerTitle: true,
            background: Image.asset("assets/images/computer.png"),
          ),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8
          ),
          delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index){
              return Container(
                  color: Color.fromARGB(255, Random().nextInt(
                      256), Random().nextInt(256), Random().nextInt(256)));
            },
            childCount: 10,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
                  (BuildContext ctx, int index) {
                return ListTile(
                  leading: Icon(Icons.people),
                  title: Text("联系人$index"),
                );
              },
              childCount: 20
          ),
        )
      ],

    );
  }
}