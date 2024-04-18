import 'package:chat_gpt_flutter_app/utilites/app_assets.dart';
import 'package:chat_gpt_flutter_app/utilites/app_styles.dart';
import 'package:flutter/material.dart';

class StaticTextWelcome extends StatelessWidget {
  const StaticTextWelcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AssetsData.logo,
          width: 20,
        ),
        const Text(
          'Welcome to',
          style: AppStyles.style32,
        ),
        const Text(
          'ChatGpt',
          style: AppStyles.style32,
        ),
        const Text(
          'Ask anything, get yout answer',
          style: AppStyles.style15,
        )
      ],
    );
  }
}
