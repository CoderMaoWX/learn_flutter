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

class WXHomePage extends StatefulWidget {
  @override
  _WXHomePageState createState() => _WXHomePageState();
}

class _WXHomePageState extends State<WXHomePage> {
  ScrollController _controller = ScrollController(initialScrollOffset: 300);
  bool _showFloatingBtn = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      //print("监听到滚动....: ${_controller.offset}");
      setState(() {
        _showFloatingBtn = _controller.offset >= 1000;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("基础Widget"),
      ),
      body: NotificationListener(
          onNotification: (ScrollNotification notification){
            if (notification is ScrollStartNotification){
              print("开始滚动");
            } else if (notification is ScrollUpdateNotification){
              print("正在滚动...,总滚动距离:${notification.metrics.maxScrollExtent} 当前滚动的位置: ${notification.metrics.pixels}");
            } else if (notification is ScrollEndNotification){
              print("结束滚动");
            }
            return true;
          },
          child:  ListView.builder(
              controller: _controller,
              itemExtent: 100,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Icon(Icons.people),
                  title: Text("联系人$index"),
                );
              })),
      floatingActionButton: _showFloatingBtn ? FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _controller.animateTo(0, duration: Duration(seconds: 1), curve: Curves.fastLinearToSlowEaseIn);
        },
      ) : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}