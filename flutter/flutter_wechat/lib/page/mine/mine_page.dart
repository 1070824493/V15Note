import 'package:flutter/material.dart';
import 'package:flutter_wechat/common/constant.dart';
import 'package:flutter_wechat/page/mine/mine_cell.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  Widget headerWidget() {
    return Container(
      height: 200,
      color: Colors.white,
      child: Container(
        child: Container(
          margin: EdgeInsets.only(top: 100, bottom: 20, left: 20, right: 10),
          // color: Colors.red,
          child: Row(
            children: [
              //头像
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage('images/Hank.png'),
                        fit: BoxFit.cover)),
              ),
              //右边的部分,包一个Expanded，懒得算了。
              Expanded(
                  child: Container(
                // color: Colors.red,
                // margin:
                //     EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 5),
                // width: MediaQuery.of(context).size.width - 100,
                padding: EdgeInsets.only(left: 10, top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 35,
                      child: Text(
                        'Hank',
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                    ), //昵称
                    Container(
                      height: 35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '微信号:12334',
                            style: TextStyle(fontSize: 17, color: Colors.grey),
                          ),
                          Image(
                            image: AssetImage('images/icon_right.png'),
                            width: 15,
                          )
                        ],
                      ),
                    ), //微信号+箭头
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: WeChatThemeColor,
        child: Stack(
          children: [
            //列表
            Container(
              //Flutter官方封装的一些属性！！
              child: MediaQuery.removePadding(
                  removeTop: true,
                  context: context,
                  child: ListView(
                    children: [
                      //头部
                      headerWidget(),
                      //ist
                      SizedBox(
                        height: 10,
                      ),
                      MineCell(
                        imageName: 'images/微信 支付.png',
                        title: '支付',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MineCell(
                        imageName: 'images/微信收藏.png',
                        title: '收藏',
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                              width: 50, height: 0.5, color: Colors.white),
                          Container(height: 0.5, color: Colors.grey)
                        ],
                      ), //分割线
                      MineCell(
                        imageName: 'images/微信相册.png',
                        title: '相册',
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                              width: 50, height: 0.5, color: Colors.white),
                          Container(height: 0.5, color: Colors.grey)
                        ],
                      ), //分割线
                      MineCell(
                        imageName: 'images/微信卡包.png',
                        title: '卡包',
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                              width: 50, height: 0.5, color: Colors.white),
                          Container(height: 0.5, color: Colors.grey)
                        ],
                      ), //分割线
                      MineCell(
                        imageName: 'images/微信表情.png',
                        title: '表情',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MineCell(
                        imageName: 'images/微信设置.png',
                        title: '设置',
                      ),
                    ],
                  )),
            ),
            //相机 --Positioned 实现一下
            Container(
              // color: Colors.red,  Top Margin 40
              margin: EdgeInsets.only(top: 40, right: 15),
              height: 25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image(image: AssetImage('images/相机.png')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
