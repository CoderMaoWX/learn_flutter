import 'dart:math';
import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white
    );
  }
}
