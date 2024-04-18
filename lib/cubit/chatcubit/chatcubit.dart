import 'package:chat_gpt_flutter_app/cubit/chatcubit/chatstates.dart';
import 'package:chat_gpt_flutter_app/utilites/widgets/showdialog.dart';
import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

class ChatCubit extends Cubit<ChatStates> {
  ChatCubit() : super(InitialChatStates());
  static ChatCubit get(context) => BlocProvider.of(context);
  final user = ChatUser(id: '1', firstName: 'user');
  final gpt = ChatUser(id: '2', firstName: 'chat gpt');

  final _chatGpt = OpenAI.instance.build(
    token: "sk-proj-qf4WwwJkiF4irz1UHApbT3BlbkFJf1l4elo1dVuvELwhzFfu",
    enableLog: true,
    baseOption: HttpSetup(
      receiveTimeout: const Duration(seconds: 2),
    ),
  );

  List<ChatMessage> messages = [];
  List<ChatMessage> questionshistory = [];
  List<ChatUser> typinguser = [];
  final Box<String> questionBox = Hive.box<String>('questions');
  Future<void> initializeHive() async {
    await Hive.openBox<String>('questions');
  }

  void onsend(ChatMessage message) async {
    emit(MessageLoadingState());

    messages.insert(0, message);
    questionBox.add(message.text);

    typinguser.add(gpt);

    List<Map<String, dynamic>> messageHistory =
        messages.reversed.map((message) {
      if (message.user == user) {
        return {'role': 'user', 'content': message.text};
      } else {
        return {'role': 'assistant', 'content': message.text};
      }
    }).toList();

    var request = ChatCompleteText(
      model: GptTurbo0301ChatModel(),
      messages: messageHistory,
      maxToken: 200,
    );
    var response = await _chatGpt.onChatCompletion(request: request);

    for (var element in response!.choices) {
      if (element.message != null) {
        messages.insert(
          0,
          ChatMessage(
            user: gpt,
            createdAt: DateTime.now(),
            text: element.message!.content,
          ),
        );
      }
    }

    typinguser.remove(gpt);

    emit(MessageSuccessState());
  }

  void loadQuestionsFromHive() {
    final questions = questionBox.values.toList().reversed.map((question) {
      questionshistory = [];
      return ChatMessage(
        text: question,
        createdAt: DateTime.now(),
        user: user,
      );
    }).toList();
    questionshistory.addAll(questions);
    emit(MessageLoadingDataState());
  }

  void clearData({required BuildContext context}) async {
    questionshistory.clear();
    await questionBox.clear();
    ShowMyDialog.showMsg(context, 'succsefully clear history');
    emit((MessageClearingState())); // Consider adding a state for clearing data
  }
}
