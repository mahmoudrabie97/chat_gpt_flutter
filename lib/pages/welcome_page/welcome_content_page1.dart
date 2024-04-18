import 'package:chat_gpt_flutter_app/pages/welcome_page/widgets/welcome_content.dart';
import 'package:flutter/material.dart';

class WelcomeContentPageone extends StatelessWidget {
  const WelcomeContentPageone({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: WelcomeContent(
        textcontainer1: 'Explain quantum computing in simple terms”',
        textcontainer2:
            '“Got any creative ideas for a 10 year old’s birthday?”',
        textcontainer3: '“How do I make an HTTP request in Javascript?”',
        dynamictext: 'Examples',
        dynamicIcondata: Icons.wb_sunny_rounded,
      ),
    );
  }
}
