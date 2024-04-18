import 'package:chat_gpt_flutter_app/pages/chat_page/chat_screen.dart';
import 'package:chat_gpt_flutter_app/pages/dashboard_page/widgets/custoom_appbar_row.dart';
import 'package:chat_gpt_flutter_app/pages/dashboard_page/widgets/listtile_item.dart';
import 'package:chat_gpt_flutter_app/utilites/extentionhelper.dart';
import 'package:flutter/material.dart';

class DashBoardBody extends StatelessWidget {
  const DashBoardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {
              context.push(const ChatScreen());
            },
            child: const CustomAppbarRow(
              icondata: Icon(
                Icons.chat_bubble_outline,
                color: Colors.white,
              ),
              textappbar: 'New Caht',
              widgetappba: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(
              thickness: 1.5,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 250,
          ),
          const Divider(
            thickness: 1.5,
            color: Colors.grey,
          ),
          const Expanded(child: SingleChildScrollView(child: ListTileItem()))
        ],
      ),
    );
  }
}
