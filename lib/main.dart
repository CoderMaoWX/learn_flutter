import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch:  Colors.blue,
      ),
      home: WXHomePage(),
    );
  }
}

class WXHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("列表测试"),
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
    return ListView(
      children: List.generate(100, (index) {
        return ListTile(
          leading: Icon(Icons.people),
          trailing: Icon(Icons.delete),
          title: Text("联系人: ${index+1}"),
          subtitle: Text("联系人电话: 1862343453456"),
        );
      }),
    );
  }
}


class ListViewSepartedWidget extends StatelessWidget {
  const ListViewSepartedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 100,
      itemBuilder: (BuildContext context, int index){
        return Text(
          "我的表格内容",
          style: TextStyle(
            fontSize: 30,
            color: Colors.lightBlue
          ),
        );
      },
        separatorBuilder: (BuildContext context, int index){
          return Divider(
            color: Colors.grey,
            height: 20,
            indent: 10,
            endIndent: 5,
              thickness: 1,
          );
        }
    );
  }
}