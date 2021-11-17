import 'package:flutter/material.dart';

class PushChildPage extends StatelessWidget {
  final String? title;

  const PushChildPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBar(
        title: Text(this.title ?? "无标题"),
      ),
    );
  }
}
