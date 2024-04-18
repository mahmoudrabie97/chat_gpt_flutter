import 'package:chat_gpt_flutter_app/pages/welcome_page/welcome_page.dart';
import 'package:chat_gpt_flutter_app/utilites/app_assets.dart';
import 'package:chat_gpt_flutter_app/utilites/app_styles.dart';
import 'package:chat_gpt_flutter_app/utilites/extentionhelper.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      context.push(const Welcomepage());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AssetsData.logo,
            width: 120,
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'ChatGPT',
            style: AppStyles.style32,
          )
          // Image.asset(AssetsData.engineer),
        ],
      ),
    );
  }
}
