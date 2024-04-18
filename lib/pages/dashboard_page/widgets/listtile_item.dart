import 'package:chat_gpt_flutter_app/cubit/chatcubit/chatcubit.dart';
import 'package:chat_gpt_flutter_app/pages/dashboard_page/widgets/customlisttile.dart';
import 'package:chat_gpt_flutter_app/pages/dashboard_page/widgets/trailing_container.dart';
import 'package:chat_gpt_flutter_app/pages/onboarding_page/onboarding_page.dart';
import 'package:chat_gpt_flutter_app/pages/question_page/question_page.dart';
import 'package:chat_gpt_flutter_app/pages/welcome_page/welcome_page.dart';
import 'package:chat_gpt_flutter_app/utilites/extentionhelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListTileItem extends StatelessWidget {
  const ListTileItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            ChatCubit.get(context).clearData(context: context);
          },
          child: const CustomLitTile(
            titleText: 'Clear conversations',
            leatingicon: Icon(
              Icons.delete,
              color: Colors.white,
            ),
            trailingwidget: null,
          ),
        ),
        const CustomLitTile(
            titleText: 'Upgrade to Plus',
            leatingicon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            trailingwidget: TraillingContainer()),
        const CustomLitTile(
            titleText: 'Light mode',
            leatingicon: Icon(
              Icons.sunny,
              color: Colors.white,
            ),
            trailingwidget: null),
        GestureDetector(
          onTap: () {
            context.push(QuestionsPage());
          },
          child: const CustomLitTile(
              titleText: 'Updates & FAQ',
              leatingicon: Icon(
                Icons.file_upload_outlined,
                color: Colors.white,
              ),
              trailingwidget: null),
        ),
        GestureDetector(
          onTap: () {
            context.push(Welcomepage());
          },
          child: const CustomLitTile(
            titleText: 'Logout',
            leatingicon: Icon(
              Icons.logout,
              color: Color(0xffBA7172),
            ),
            trailingwidget: null,
            islogout: true,
          ),
        ),
      ],
    );
  }
}
