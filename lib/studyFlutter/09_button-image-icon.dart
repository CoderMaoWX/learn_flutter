import 'package:flutter/material.dart';
import 'package:learn_flutter/headfiles/global.dart';

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
    return Column(
      children: [
        ButtonTheme(
          minWidth: 30,
          height: 20,
          child: FlatButton(
              padding: EdgeInsets.all(8),
              color: Colors.blue,
              child: Text("Flat Button"),
              materialTapTargetSize: MaterialTapTargetSize.padded,
              textColor: Colors.white,
              onPressed: () {
                print("点击了FlatButton");
              }
          ),
        ),
      ],
    );
  }
}





class Imagewidget extends StatelessWidget {
  // 1.占位图的问题: FadeInImage
  // 2.图片缓存: 1000张 100m
  const Imagewidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInImage(
        fadeOutDuration: Duration(seconds: 1),
        fadeInDuration: Duration(seconds: 1),
        placeholder: AssetImage("assets/images/computer.png"),
        image: NetworkImage(GlobalClass.imageURL2)
    );
  }
}



class IconTextWidget extends StatelessWidget {
  const IconTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Icon字体图标和图片图标
    // 1.字体图标矢量图(放大的时候不会失真)
    // 2.字体图标可以设置颜色
    // 3.图标很多时, 占据空间更小
//    return Icon(Icons.pets, size: 300, color: Colors.orange,);
//    return Icon(IconData(0xe91d, fontFamily: 'MaterialIcons'), size: 300, color: Colors.orange,);
    // 1.0xe91d -> unicode编码
    // 2.设置对应的字体
    return Text("\ue91d", style: TextStyle(
        fontSize: 30, color: Colors.pink, fontFamily: "MaterialIcons"
    ),);
  }
}