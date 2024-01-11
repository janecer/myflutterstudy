import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;

  const AppColumnLayout(
      {super.key,
      required this.alignment,
      required this.firstText,
      required this.secondText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: alignment,
          children: [
            Text(
              firstText,
              style: Styles.headlineStyle3.copyWith(color: Colors.black),
            ),
            Gap(AppLayout.getHeight(5)),
            Text(
              secondText,
              style: Styles.headlineStyle4,
            ),
          ],
        )
      ],
    );
  }
}
