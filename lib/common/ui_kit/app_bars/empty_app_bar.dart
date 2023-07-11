import 'package:flutter/material.dart';

import 'package:code_example/common/ui_kit/app_bars/i_app_bar.dart';

class EmptyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Function()? onPressed;

  const EmptyAppBar({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IAppBar.basic(
      leading: onPressed == null
          ? null
          : IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: onPressed,
            ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
