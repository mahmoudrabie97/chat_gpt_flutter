import 'package:chat_gpt_flutter_app/cubit/chatcubit/chatcubit.dart';
import 'package:chat_gpt_flutter_app/pages/onboarding_page/onboarding_page.dart';
import 'package:chat_gpt_flutter_app/utilites/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox<String>('questions');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: AppColor.kmainColor,
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff10A37F)),
          useMaterial3: true,
        ),
        home: const OnBoardingPage(),
      ),
    );
  }
}
