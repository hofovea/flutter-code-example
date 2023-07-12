import 'package:flutter/material.dart';

import 'package:code_example/common/ui_kit/app_bars/photo_app_bar.dart';
import 'package:code_example/common/ui_kit/buttons/delete_button.dart';
import 'package:code_example/common/ui_kit/buttons/post_button.dart';
import 'package:code_example/common/ui_kit/buttons/reply_button.dart';
import 'package:code_example/common/ui_kit/buttons/send_button.dart';
import 'package:code_example/common/ui_kit/buttons/unfollow_button.dart';
import 'package:code_example/common/ui_kit/call_info/missed_call.dart';
import 'package:code_example/common/ui_kit/call_info/outgoing_call.dart';
import 'package:code_example/common/ui_kit/logo/app_logo.dart';
import 'package:code_example/common/ui_kit/text_fields/comment_text_field.dart';
import 'package:code_example/common/ui_kit/text_fields/default_text_field.dart';
import 'package:code_example/common/ui_kit/text_fields/message_text_field.dart';
import 'package:code_example/common/ui_kit/text_fields/password_text_field.dart';
import 'package:code_example/common/ui_kit/text_fields/phone_text_field.dart';
import 'package:code_example/common/ui_kit/text_fields/search_text_field.dart';
import 'package:code_example/common/ui_kit/text_fields/validation_icon_text_field/validation_icon_text_field.dart';

class Presentation extends StatefulWidget {
  const Presentation({Key? key}) : super(key: key);

  @override
  State<Presentation> createState() => _PresentationState();
}

class _PresentationState extends State<Presentation> {
  var c = TextEditingController();

  @override
  void initState() {
    super.initState();
    c.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    String? v(String? s) {
      if (s!.length < 8) {
        return 'Error';
      }
      return null;
    }

    return Scaffold(
      appBar: PhotoAppBar(
        onPressed: () {},
      ),
      body: ListView(
        children: [
          DeleteButton(onPressed: () {}),
          PostButton(onPressed: () {}),
          ReplyButton(onPressed: () {}),
          SendButton(onPressed: () {}),
          UnfollowButton(onPressed: () {}),
          const MissedCall(),
          const OutgoingCall(durationInMinutes: 0),
          const Logo(),
          CommentTextField(controller: c, addComment: () {}),
          DefaultTextField(hintText: 'Hint text', controller: c, validator: v),
          MessageTextField(
              controller: c, sendMessage: () {}, openGallery: () {}),
          PasswordTextField(controller: c, validator: v),
          PhoneTextField(validator: v),
          SearchTextField(controller: c),
          ValidationIconTextField(hintText: 'Nickname', validator: v)
        ],
      ),
    );
  }
}
