import 'package:chat_gpt_flutter_app/pages/welcome_page/widgets/container_info.dart';
import 'package:chat_gpt_flutter_app/pages/welcome_page/widgets/dynamic_text_icon.dart';
import 'package:chat_gpt_flutter_app/pages/welcome_page/widgets/static_text_welcome.dart';
import 'package:flutter/material.dart';

class WelcomeContent extends StatelessWidget {
  const WelcomeContent({
    super.key,
    required this.textcontainer1,
    required this.textcontainer2,
    required this.textcontainer3,
    required this.dynamictext,
    required this.dynamicIcondata,
  });
  final String textcontainer1;
  final String textcontainer2;
  final String textcontainer3;
  final String dynamictext;
  final IconData dynamicIcondata;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 50,
        ),
        const Center(
          child: StaticTextWelcome(),
        ),
        DynamicTextIcon(
          dynamicicon: dynamicIcondata,
          dynamictext: dynamictext,
        ),
        ContainerInfoItem(
          containerInfoText: textcontainer1,
        ),
        ContainerInfoItem(
          containerInfoText: textcontainer2,
        ),
        ContainerInfoItem(
          containerInfoText: textcontainer3,
        ),
      ],
    );
  }
}
