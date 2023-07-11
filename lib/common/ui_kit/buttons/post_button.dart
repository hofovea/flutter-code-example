import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/ui_kit/buttons/i_text_button.dart';

class PostButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const PostButton({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ITextButton.blue(
      onPressed: onPressed,
      child: Text(
        AppLocalizations.of(context)!.post,
      ),
    );
  }
}
