import 'package:asp/asp.dart';
import 'package:chat_app_mini_core/app/interactor/atoms/user_atom.dart';
import 'package:chat_app_mini_core/app/interactor/actions/user_action.dart';
import 'package:flutter/material.dart';

import '../core/widgets/input_messages_widget.dart';
import '../interactor/models/user_model.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final textController = TextEditingController(text: '');

  var model = const UserModel(
    name: 'Victor',
    message: '',
  );

  @override
  Widget build(BuildContext context) {
    return RxBuilder(
      builder: (context) {
        final message = userState.value;
        return Scaffold(
          appBar: AppBar(
            title: const Text('Chat App'),
          ),
          body: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: InputMessagesWidget(
                  controller: textController,
                  getText: (text) {
                    model = model.copyWith(
                      message: text,
                    );
                  },
                  sendMessage: () {
                    sendMessage(model);
                    textController.clear();
                  },
                ),
              ),
              Container(
                height: 400,
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 100,
                      height: 50,
                      margin: const EdgeInsets.all(10),
                      color: Colors.lightBlue,
                      child: Center(
                        child: Text(message[index].message),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
