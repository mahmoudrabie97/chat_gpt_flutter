import 'package:chat_gpt_flutter_app/utilites/app_styles.dart';
import 'package:chat_gpt_flutter_app/utilites/appcolors.dart';
import 'package:flutter/material.dart';

class ContainerInfoItem extends StatelessWidget {
  const ContainerInfoItem({super.key, required this.containerInfoText});
  final String containerInfoText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColor.kcontinerinfoColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              textAlign: TextAlign.center,
              containerInfoText,
              style: AppStyles.style20,
            ),
          ),
        ),
      ),
    );
  }
}
