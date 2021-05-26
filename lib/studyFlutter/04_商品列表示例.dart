import 'package:flutter/material.dart';

main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WXHomePage(),
    );
  }
}

class WXHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "商品列表",style: TextStyle( fontSize: 20, color: Colors.white ),
        ),
      ),
      body: WXHomePageBody(),
    );
  }
}

class WXHomePageBody extends StatefulWidget {
  @override
  _WXHomePageBodyState createState() => _WXHomePageBodyState();
}

class _WXHomePageBodyState extends State<WXHomePageBody> {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        WXGoodsItem("Summer Dress", "ZAFUL Tie Shoulder Ruched Bust Summer Dress - Light Yellow S", "https://uidesign.zafcdn.com/ZF/image/7050/0520-600x394.png?imbypass=true"),
        WXGoodsItem("Hem Sundress", "Swiss Dot Frilled Tie Pep Hem Sundress - Light Blue S", "https://uidesign.zafcdn.com/ZF/image/7024/0513-600x394.png?imbypass=true"),
        WXGoodsItem("Back Dress", "ZAFUL Ditsy Print Criss Cross Open Back Dress - Orange S", "https://uidesign.zafcdn.com/ZF/image/6978/0511-pc12.jpg"),
        WXGoodsItem("Back Dress", "ZAFUL Ditsy Print Criss Cross Open Back Dress - Orange S", "https://geshopimg.logsss.com/uploads/BCjtZgNRGwl3b6KsI9SyoFuLHUkqr0EV.jpg"),
        WXGoodsItem("Back Dress", "ZAFUL Ditsy Print Criss Cross Open Back Dress - Orange S", "https://uidesign.zafcdn.com/ZF/image/6978/0511-pc13.jpg"),
      ],
    );
  }
}

class WXGoodsItem extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imgURL;
  WXGoodsItem(this.title, this.subTitle, this.imgURL);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 15),
          Text(
            title,
            style: TextStyle(
                fontSize: 16,
                color: Colors.black
            ),
          ),

          SizedBox(height: 15),
          Text(
            subTitle,
            style: TextStyle(
                fontSize: 14,
                color: Colors.black87

            ),
          ),
          Image.network(imgURL)
        ],
      ),
    );
  }
}


