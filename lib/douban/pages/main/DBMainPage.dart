import 'package:flutter/material.dart';
import 'package:learn_flutter/douban/pages/home/DBHomePage.dart';
import 'package:learn_flutter/douban/pages/subject/DBSubjectPage.dart';

class DBMainPage extends StatefulWidget {
  @override
  _DBMainPageState createState() => _DBMainPageState();
}

class _DBMainPageState extends State<DBMainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pageStackView(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        type: BottomNavigationBarType.fixed,
        items: pageStackItems(),
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  List<Widget> pageStackView() {
    return [
      DBHomePage("首页"),
      DBSubjectPage("书影音"),
      DBSubjectPage("小组"),
      DBSubjectPage("市集"),
      DBSubjectPage("我的"),
    ];
  }

  List<BottomNavigationBarItem> pageStackItems(){
    return [
      DBBottomBarItem("home", "首页" ),
      DBBottomBarItem("subject", "书影音"),
      DBBottomBarItem("group", "小组"),
      DBBottomBarItem("mall", "市集"),
      DBBottomBarItem("profile", "我的"),
    ];
  }
}

class DBBottomBarItem extends BottomNavigationBarItem {
  DBBottomBarItem(String iconName, String title) : super(
      label: title,
      icon: Image.asset("assets/images/tabbar/$iconName.png", width: 24, gaplessPlayback: true,),
      activeIcon: Image.asset("assets/images/tabbar/${iconName}_active.png", width: 24, gaplessPlayback: true,)
  );
}