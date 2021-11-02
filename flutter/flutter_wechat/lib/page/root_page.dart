import 'package:flutter/material.dart';
import 'package:flutter_wechat/page/chat_page.dart';
import 'package:flutter_wechat/page/discover_page.dart';
import 'package:flutter_wechat/page/friend_page.dart';
import 'package:flutter_wechat/page/mine_page.dart';
import 'package:flutter_wechat/widgets/my_asset_image.dart';

class RootPage extends StatefulWidget {
  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [ChatPage(), FriendPage(), DiscoverPage(), MinePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedFontSize: 12.0,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        fixedColor: Colors.green,
        items: const [
          BottomNavigationBarItem(
            icon: MyAssetImage(
              'tabbar_chat',
              width: 20,
              height: 20,
            ),
            activeIcon: MyAssetImage(
              'tabbar_chat_hl',
              width: 20,
              height: 20,
            ),
            label: '微信',
          ),
          BottomNavigationBarItem(
            icon: MyAssetImage(
              'tabbar_friends',
              width: 20,
              height: 20,
            ),
            activeIcon: MyAssetImage(
              'tabbar_friends_hl',
              width: 20,
              height: 20,
            ),
            label: '好友',
          ),
          BottomNavigationBarItem(
            icon: MyAssetImage(
              'tabbar_discover',
              width: 20,
              height: 20,
            ),
            activeIcon: MyAssetImage(
              'tabbar_discover_hl',
              width: 20,
              height: 20,
            ),
            label: '发现',
          ),
          BottomNavigationBarItem(
            icon: MyAssetImage(
              'tabbar_mine',
              width: 20,
              height: 20,
            ),
            activeIcon: MyAssetImage(
              'tabbar_mine_hl',
              width: 20,
              height: 20,
            ),
            label: '我的',
          ),
        ],
      ),
    );
  }
}
