import 'package:flutter/material.dart';

class InputMessagesWidget extends StatelessWidget {
  final void Function()? sendMessage;
  final void Function(String)? getText;

  const InputMessagesWidget({
    super.key,
    required this.sendMessage,
    required this.getText,
  });

  @override
  Widget build(BuildContext context) {
    final focus = FocusNode();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.grey.shade200,
        ),
        child: TextField(
          onChanged: getText,
          onTapOutside: (PointerDownEvent event) {
            FocusScope.of(context).requestFocus(focus);
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
            hintText: 'Mensagem',
            hintStyle: TextStyle(
              color: Colors.grey.shade500,
            ),
            suffixIcon: IconButton(
              icon: const Icon(Icons.send_rounded),
              onPressed: sendMessage,
            ),
          ),
        ),
      ),
    );
  }
}
