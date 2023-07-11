import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/ui_kit/app_bars/i_app_bar.dart';
import 'package:code_example/common/ui_kit/buttons/cancel_button.dart';
import 'package:code_example/common/ui_kit/ui_constants.dart';

class EditProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onPressed;

  const EditProfileAppBar({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IAppBar.underlined(
      title: AppLocalizations.of(context)!.editProfile,
      leading: CancelButton(
        onPressed: onPressed,
      ),
      leadingWidth: UIConstants.leadingWidth,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
