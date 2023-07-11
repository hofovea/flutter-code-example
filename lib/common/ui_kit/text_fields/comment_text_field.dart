import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/ui_kit/buttons/post_button.dart';

class CommentTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function addComment;

  const CommentTextField({
    required this.controller,
    required this.addComment,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: AppLocalizations.of(context)!.addComment,
        suffixIcon: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PostButton(
              onPressed: controller.text.isEmpty ? null : () => addComment,
            ),
          ],
        ),
      ),
    );
  }
}
