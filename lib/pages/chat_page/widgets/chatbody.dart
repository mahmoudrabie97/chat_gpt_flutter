import 'package:chat_gpt_flutter_app/cubit/chatcubit/chatcubit.dart';
import 'package:chat_gpt_flutter_app/cubit/chatcubit/chatstates.dart';
import 'package:chat_gpt_flutter_app/pages/dashboard_page/widgets/custoom_appbar_row.dart';
import 'package:chat_gpt_flutter_app/utilites/app_assets.dart';
import 'package:chat_gpt_flutter_app/utilites/appcolors.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ChatCubit.get(context).loadQuestionsFromHive();
    return BlocConsumer<ChatCubit, ChatStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              CustomAppbarRow(
                icondata: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                textappbar: 'Back',
                widgetappba: Image.asset(
                  AssetsData.logo,
                  width: 20,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  thickness: 1.5,
                  color: Colors.grey,
                ),
              ),
              Expanded(
                child: DashChatWidget(),
              )
            ],
          ),
        );
      },
    );
  }
}

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
                hintText: 'ask any thing?',
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
