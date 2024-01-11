
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({super.key,required this.icon,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.symmetric(vertical: AppLayout.getWidth(12),horizontal: AppLayout.getHeight(12)),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(6))),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.grey,
          ),
          Gap(AppLayout.getWidth(10)),
          Text(
            text,
            style: Styles.textStyle
                .copyWith(color: Colors.grey, fontSize: 14),
          )
        ],
      ),
    );
  }
}
