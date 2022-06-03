import 'package:chatroom/core/config/config.dart';
import 'package:chatroom/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Root());

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: DetailChatRoomScreen(),
    );
  }
}
