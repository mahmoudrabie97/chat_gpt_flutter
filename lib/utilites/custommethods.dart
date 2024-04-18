import 'package:flutter/material.dart';

bool isEmailValid(String email) {
  final emailRegex = RegExp(r'^[\w-]+(.[\w-]+)*@([\w-]+.)+[a-zA-Z]{2,7}$');
  return emailRegex.hasMatch(email);
}

//void showmessageToast(
//  {required String message, required Color backgroundcolor}) {
// Fluttertoast.showToast(
//   msg: message,
// backgroundColor: backgroundcolor,
//textColor: Colors.white,
// fontSize: 16.0);
//}

AppBar detailspageappbar(
    BuildContext context, Widget widget, bool ceneredtitle) {
  return AppBar(
    centerTitle: ceneredtitle,
    backgroundColor: Colors.white,
    elevation: 0,
    title: widget,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(Icons.arrow_back),
      color: Colors.black,
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {},
          child: const Image(
            image: AssetImage('assets/images/Buy1.png'),
          ),
        ),
      )
    ],
  );
}

Future<bool?> showExitConfirmationDialog(
    {required BuildContext context}) async {
  return showDialog<bool>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        content: const Text('Are You Want to exit?'),
        actions: <Widget>[
          TextButton(
            child: const Text('Yes'),
            onPressed: () {
              Navigator.of(context).pop(true); // تأكيد الخروج
            },
          ),
          TextButton(
            child: const Text('No'),
            onPressed: () {
              Navigator.of(context).pop(false); // إلغاء الخروج
            },
          ),
        ],
      );
    },
  );
}
