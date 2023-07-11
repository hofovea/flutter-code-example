import 'package:flutter/material.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';

class BulletListItem extends StatelessWidget {
  final Widget text;

  const BulletListItem({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('\u2022'),
        const SizedBox(width: widePadding),
        Flexible(child: text),
      ],
    );
  }
}
