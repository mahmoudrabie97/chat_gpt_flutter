import 'package:chat_gpt_flutter_app/utilites/app_styles.dart';
import 'package:flutter/material.dart';

class CustomAppbarRow extends StatelessWidget {
  const CustomAppbarRow({
    super.key,
    required this.icondata,
    required this.widgetappba,
    required this.textappbar,
  });
  final Widget icondata;
  final Widget widgetappba;
  final String textappbar;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          icondata,
          const SizedBox(
            width: 12,
          ),
          Text(
            textappbar,
            style: AppStyles.style18,
          ),
          const Spacer(),
          widgetappba,
        ],
      ),
    );
  }
}
