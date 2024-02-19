import 'package:flutter/material.dart';

import '../core/widgets/input_messages_widget.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat App'),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: InputMessagesWidget(
              getText: (text) {},
              sendMessage: () {},
            ),
          ),
          const Center(
            child: Text('mensagens aqui'),
          ),
        ],
      ),
    );
  }
}
