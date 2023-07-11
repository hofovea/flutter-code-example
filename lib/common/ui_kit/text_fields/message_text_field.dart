import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/app_icons/app_icons.dart';
import 'package:code_example/common/ui_kit/buttons/send_button.dart';

class MessageTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function sendMessage;
  final Function openGallery;

  const MessageTextField({
    required this.controller,
    required this.sendMessage,
    required this.openGallery,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: AppLocalizations.of(context)!.writeMessage,
        suffixIcon: controller.text.isEmpty
            ? GestureDetector(
                onTap: () => openGallery,
                child: Icon(AppIcons.picture,
                    color: Theme.of(context)
                        .inputDecorationTheme
                        .suffixStyle
                        ?.color),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SendButton(
                    onPressed: () => sendMessage,
                  ),
                ],
              ),
      ),
    );
  }
}
