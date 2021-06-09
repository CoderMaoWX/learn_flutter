import 'package:flutter/material.dart';

class DBSubjectPage extends StatefulWidget {
  String title = "";
  DBSubjectPage(this.title);
  @override
  _DBSubjectPageContentState createState() => _DBSubjectPageContentState();
}

class _DBSubjectPageContentState extends State<DBSubjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Text(widget.title, style: TextStyle(
            fontSize: 30
          ),),
        )
    );
  }
}