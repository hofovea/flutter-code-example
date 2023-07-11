import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/ui_kit/app_bars/i_app_bar.dart';
import 'package:code_example/common/ui_kit/buttons/cancel_button.dart';
import 'package:code_example/common/ui_kit/buttons/confirm_button.dart';
import 'package:code_example/common/ui_kit/ui_constants.dart';

class LibraryAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onPressed;
  final VoidCallback? onConfirm;

  const LibraryAppBar({
    required this.onPressed,
    required this.onConfirm,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IAppBar.underlined(
      title: AppLocalizations.of(context)!.library,
      leading: CancelButton(
        onPressed: onPressed,
      ),
      actions: [
        ConfirmButton(onPressed: onConfirm),
      ],
      leadingWidth: UIConstants.leadingWidth,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
