import 'package:chat_gpt_flutter_app/pages/dashboard_page/dashboard_page.dart';
import 'package:chat_gpt_flutter_app/pages/welcome_page/welcome_content_page1.dart';
import 'package:chat_gpt_flutter_app/pages/welcome_page/welcome_content_page2.dart';
import 'package:chat_gpt_flutter_app/pages/welcome_page/welcome_content_page3.dart';
import 'package:chat_gpt_flutter_app/pages/welcome_page/widgets/custompageindicator.dart';
import 'package:chat_gpt_flutter_app/utilites/extentionhelper.dart';
import 'package:flutter/material.dart';

class WelcomeBody extends StatefulWidget {
  const WelcomeBody({super.key});
  @override
  WelcomeBodyState createState() => WelcomeBodyState();
}

class WelcomeBodyState extends State<WelcomeBody> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: const [
                WelcomeContentPageone(),
                WelcomeContentPageTwo(),
                WelcomeContentPageThree(),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 3; i++)
                CustomPageIndicator(isActive: i == _currentPage)
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff10A37F)),
                onPressed: () {
                  if (_currentPage < 2) {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  } else {
                    context.push(const DashBoardPage());
                  }
                },
                child: _currentPage < 2
                    ? const Text(
                        'Next',
                        style: TextStyle(color: Colors.white),
                      )
                    : const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Let’s Chat',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 19,
                          )
                        ],
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
