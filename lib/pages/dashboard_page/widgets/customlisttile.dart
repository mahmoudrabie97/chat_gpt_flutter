import 'package:chat_gpt_flutter_app/utilites/app_styles.dart';
import 'package:flutter/material.dart';

class CustomLitTile extends StatelessWidget {
  const CustomLitTile({
    super.key,
    required this.titleText,
    required this.leatingicon,
    required this.trailingwidget,
    this.islogout = false,
  });
  final String titleText;
  final Widget leatingicon;
  final Widget? trailingwidget;
  final bool islogout;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        titleText,
        style: islogout == false
            ? AppStyles.style13
            : const TextStyle(
                color: Color(0xffBA7172),
                fontSize: 15,
                fontWeight: FontWeight.w500),
      ),
      leading: leatingicon,
      trailing: trailingwidget,
    );
  }
}
