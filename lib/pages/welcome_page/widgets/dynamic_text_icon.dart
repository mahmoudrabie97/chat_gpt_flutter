import 'package:chat_gpt_flutter_app/utilites/app_styles.dart';
import 'package:chat_gpt_flutter_app/utilites/appcolors.dart';
import 'package:flutter/material.dart';

class DynamicTextIcon extends StatelessWidget {
  const DynamicTextIcon(
      {super.key, required this.dynamicicon, required this.dynamictext});
  final IconData dynamicicon;
  final String dynamictext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 42),
      child: Column(
        children: [
          Icon(
            dynamicicon,
            color: AppColor.kdynaicIconColor,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            dynamictext,
            style: AppStyles.style17,
          )
        ],
      ),
    );
  }
}
