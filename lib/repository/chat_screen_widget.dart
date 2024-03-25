import 'package:flutter/material.dart';

class ChatScreenWidget extends StatefulWidget {
  const ChatScreenWidget({super.key});

  @override
  State<ChatScreenWidget> createState() => _ChatScreenWidgetState();
}

class _ChatScreenWidgetState extends State<ChatScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:100,
      child:ListView(
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}