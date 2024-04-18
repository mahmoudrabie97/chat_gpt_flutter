import 'package:chat_gpt_flutter_app/pages/welcome_page/widgets/welcome_content.dart';
import 'package:flutter/material.dart';

class WelcomeContentPageThree extends StatelessWidget {
  const WelcomeContentPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: WelcomeContent(
        textcontainer1: 'May occasionally generate incorrect information',
        textcontainer2:
            'May occasionally produce harmful instructions or biased content',
        textcontainer3: 'Limited knowledge of world and events after 2021',
        dynamictext: 'Limitations',
        dynamicIcondata: Icons.warning_amber_rounded,
      ),
    );
  }
}
