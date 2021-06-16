import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:learn_flutter/douban/model/SubjectModel.dart';

class DBMovieItem extends StatelessWidget {
  final Subject item;
  DBMovieItem(this.item);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildHeader(),
        buildMiddle(),
        Text("底部的布局"),
      ],
    );
  }

  //1.头部的布局
  Widget buildHeader(){
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
        color: Color.fromARGB(255, 238, 205, 144),
      ),
      child: Text(
        "NO.${item.rank}",
        style: TextStyle(
          fontSize: 18,
          color: Color.fromARGB(255, 131, 95, 36),
        ),
      ),
    );
  }

  //1.中间的布局
  Widget buildMiddle(){
    return Row(
      children: [
        buildMiddleImage(),
        buildMiddleText(),
      ],
    );
  }

  //2.1 中间图片的布局
  Widget buildMiddleImage(){
    return ClipRRect(
      child: Image.network(
        item.images.medium,
        height: 150,
      ),
      borderRadius: BorderRadius.circular(5),
    );
  }
  
  //2.2 中间图片的布局
  Widget buildMiddleText(){
    return ClipRRect(
      child: Image.network(
        item.images.medium,
        height: 150,
      ),
      borderRadius: BorderRadius.circular(5),
    );
  }
  
  
}
