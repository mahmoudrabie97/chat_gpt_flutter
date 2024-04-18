import 'package:flutter/material.dart';

class TraillingContainer extends StatelessWidget {
  const TraillingContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffFBF3AD),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'New',
          style: TextStyle(
              color: Color(0xffB3A844),
              fontSize: 14,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
