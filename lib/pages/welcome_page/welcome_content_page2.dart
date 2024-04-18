import 'package:chat_gpt_flutter_app/pages/welcome_page/widgets/welcome_content.dart';
import 'package:flutter/material.dart';

class WelcomeContentPageTwo extends StatelessWidget {
  const WelcomeContentPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: WelcomeContent(
        textcontainer1: 'Remembers what user said earlier in the conversation”',
        textcontainer2: '“Allows user to provide follow-up corrections',
        textcontainer3: 'Trained to decline inappropriate requests',
        dynamictext: 'Capabilities',
        dynamicIcondata: Icons.electric_bolt,
      ),
    );
  }
}
