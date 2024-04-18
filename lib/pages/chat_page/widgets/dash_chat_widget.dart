import 'package:chat_gpt_flutter_app/cubit/chatcubit/chatcubit.dart';
import 'package:chat_gpt_flutter_app/utilites/appcolors.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';

class DashChatWidget extends StatelessWidget {
  const DashChatWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DashChat(
        typingUsers: ChatCubit.get(context).typinguser,
        messageOptions: const MessageOptions(
            containerColor: Colors.white, textColor: Colors.white),
        inputOptions: const InputOptions(
            inputTextStyle: TextStyle(color: Colors.white),
            inputDecoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.white),
                focusColor: Colors.white,
                hintText: 'ask any thing to answer?',
                hintStyle: TextStyle(color: Colors.grey),
                fillColor: AppColor.kmainColor,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white))),
            inputToolbarStyle: BoxDecoration(
              color: AppColor.kmainColor,
            ),
            cursorStyle: CursorStyle(
              color: Colors.white,
            )),
        currentUser: ChatCubit.get(context).user,
        onSend: (ChatMessage m) {
          ChatCubit.get(context).onsend(m);
        },
        messages: ChatCubit.get(context).messages);
  }
}
