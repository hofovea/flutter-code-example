import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:code_example/common/ui_kit/app_bars/empty_app_bar.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/additional_rights_bullet_list.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/additional_rights_title.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/agreement_bullet_list.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/agreement_text.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/agreement_title.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/commitment_text.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/commitments_bullet_list.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/commitments_title.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/content_removal_bullet_list.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/content_removal_title.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/handle_disputes_text.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/handle_disputes_title.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/app_service_bullet_list.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/app_service_title_text.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/permissions_bullet_list.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/permissions_text.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/permissions_title.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/provide_app_service.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/responsible_bullet_list.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/responsible_title.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/revised_text.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/terms_and_conditions_title.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/unsolicited_material_text.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/unsolicited_material_title.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/updating_terms_text.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/updating_terms_title.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/welcome_app_text.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EmptyAppBar(
        onPressed: () {
          AutoRouter.of(context).pop();
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: widePadding),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: const [
            TermsAndConditionsTitle(),
            SizedBox(height: widePadding),
            WelcomeAppText(),
            SizedBox(height: titleSpacing),
            AppServiceTitle(),
            SizedBox(height: disclaimerBottomPadding),
            ProvideAppService(),
            SizedBox(height: widePadding),
            AppServiceBulletList(),
            SizedBox(height: titleSpacing),
            CommitmentsTitle(),
            SizedBox(height: disclaimerBottomPadding),
            CommitmentText(),
            SizedBox(height: widePadding),
            CommitmentsBulletList(),
            SizedBox(height: titleSpacing),
            PermissionsTitle(),
            SizedBox(height: disclaimerBottomPadding),
            PermissionsText(),
            SizedBox(height: widePadding),
            PermissionsBulletList(),
            SizedBox(height: titleSpacing),
            AdditionalRightsTitle(),
            SizedBox(height: widePadding),
            AdditionalRightsBulletList(),
            SizedBox(height: titleSpacing),
            ContentRemovalTitle(),
            SizedBox(height: widePadding),
            ContentRemovalBulletList(),
            SizedBox(height: titleSpacing),
            AgreementTitle(),
            SizedBox(height: disclaimerBottomPadding),
            AgreementText(),
            SizedBox(height: widePadding),
            AgreementBulletList(),
            SizedBox(height: titleSpacing),
            ResponsibleTitle(),
            SizedBox(height: widePadding),
            ResponsibleBulletList(),
            SizedBox(height: titleSpacing),
            HandleDisputesTitle(),
            SizedBox(height: disclaimerBottomPadding),
            HandleDisputesText(),
            SizedBox(height: titleSpacing),
            UnsolicitedMaterialTitle(),
            SizedBox(height: disclaimerBottomPadding),
            UnsolicitedMaterialText(),
            SizedBox(height: titleSpacing),
            UpdatingTermsTitle(),
            SizedBox(height: disclaimerBottomPadding),
            UpdatingTermsText(),
            SizedBox(height: titleSpacing),
            RevisedText(),
            SizedBox(height: titleSpacing),
          ],
        ),
      ),
    );
  }
}
