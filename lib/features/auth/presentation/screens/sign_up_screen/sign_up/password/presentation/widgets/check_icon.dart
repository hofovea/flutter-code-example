import 'package:flutter/material.dart';

import 'package:code_example/common/app_colors/app_colors.dart';

class CheckIcon extends StatelessWidget {
  const CheckIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.done,
      color: AppColors.success,
    );
  }
}
