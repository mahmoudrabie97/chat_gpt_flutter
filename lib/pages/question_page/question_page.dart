import 'package:chat_gpt_flutter_app/cubit/chatcubit/chatcubit.dart';
import 'package:chat_gpt_flutter_app/cubit/chatcubit/chatstates.dart';
import 'package:chat_gpt_flutter_app/pages/welcome_page/widgets/container_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionsPage extends StatelessWidget {
  const QuestionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    ChatCubit.get(context).loadQuestionsFromHive();
    return BlocConsumer<ChatCubit, ChatStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Questions page'),
          ),
          body: SizedBox(
            height: 400,
            child: ListView.builder(
                itemCount: ChatCubit.get(context).questionshistory.length,
                itemBuilder: (context, index) {
                  return ContainerInfoItem(
                      containerInfoText:
                          ChatCubit.get(context).questionshistory[index].text);
                }),
          ),
        );
      },
    );
  }
}
