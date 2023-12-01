import 'package:custom_widgets_app/widgets/cards/custom_chat_bubble1.dart';
import 'package:custom_widgets_app/widgets/cards/custom_chat_bubble2.dart';
import 'package:flutter/material.dart';

class ChatBubblessPage extends StatelessWidget {
  const ChatBubblessPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Bubbles Page'),
      ),

      body: Container(
        padding: EdgeInsets.only(top: height*0.01),
        alignment: Alignment.center,
        child: ListView(
          children: [
            const CustomChatBubble1(),
            SizedBox(height:height*0.01),
            const CustomChatBubble2(),
          ],
        ),
      ),
    );
  }
}