import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:code_example/common/app_colors/app_colors.dart';
import 'package:code_example/common/ui_kit/app_bars/empty_app_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:code_example/core/presentation/routing/app_router.gr.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/set_profile/city/city_style_constants.dart';

class CityScreen extends StatelessWidget {
  final Uint8List? avatar;
  final String? city;

  const CityScreen({Key? key, this.avatar, this.city}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController cityController =
        TextEditingController(text: city);
    String? cityToSubmit = city;

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: EmptyAppBar(
          onPressed: () {
            FocusManager.instance.primaryFocus?.unfocus();
            context.router.replace(
              AddPhotoRoute(imageBytes: avatar),
            );
          },
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: gapFromAppBar),
              Padding(
                padding: const EdgeInsets.only(bottom: titlePadding),
                child: Text(AppLocalizations.of(context)!.enterCityTitle,
                    style: Theme.of(context).textTheme.headlineLarge),
              ),
              Text(
                AppLocalizations.of(context)!.enterCitySubtitle,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .copyWith(color: AppColors.subtitle),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: textInputVerticalPadding,
                  horizontal: widePadding,
                ),
                child: TextField(
                  controller: cityController,
                  decoration: InputDecoration(
                    hintText: AppLocalizations.of(context)!.enterCityHint,
                  ),
                  onChanged: (String input) {
                    if (input.isEmpty) {
                      cityToSubmit = null;
                    } else {
                      cityToSubmit = input;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: widePadding),
                child: SizedBox(
                  width: buttonWidth,
                  height: buttonHeight,
                  child: ElevatedButton(
                    onPressed: () {
                      FocusManager.instance.primaryFocus?.unfocus();
                      context.router.replace(
                        BioRoute(
                          avatar: avatar,
                          city: cityToSubmit,
                        ),
                      );
                    },
                    child: Text(AppLocalizations.of(context)!.next),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
