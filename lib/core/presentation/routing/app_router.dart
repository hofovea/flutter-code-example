import 'package:auto_route/annotations.dart';

import 'package:code_example/core/presentation/wrappers/auth_state_wrapper/auth_state_wrapper_screen.dart';
import 'package:code_example/core/presentation/wrappers/authorized_flow_wrapper/authorized_flow_wrapper_screen.dart';
import 'package:code_example/core/presentation/wrappers/connectivity_wrapper/connectivity_wrapper_screen.dart';
import 'package:code_example/core/presentation/wrappers/unauthorized_flow_wrapper/unauthorized_flow_wrapper_screen.dart';
import 'package:code_example/features/auth/presentation/screens/gallery_image_picker_screen/gallery_image_picker_screen.dart';
import 'package:code_example/features/auth/presentation/screens/password_recovery_screen/subflows/forgot_password/forgot_password_screen.dart';
import 'package:code_example/features/auth/presentation/screens/password_recovery_screen/subflows/password_input/recovery_password_input.dart';
import 'package:code_example/features/auth/presentation/screens/sign_in_screen/presentation/screens/sign_in_screen.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/set_profile/add_photo/add_photo_screen.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/set_profile/bio/bio_screen.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/set_profile/birthday/birthday_screen.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/set_profile/city/city_screen.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/set_profile/full_name/full_name_screen.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/set_profile/nickname/nickname_screen.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/set_profile/take_photo/crop_photo/crop_photo_screen.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/set_profile/take_photo/take_photo_screen.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/sign_up/password/presentation/screens/password_screen.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/sign_up/phone_or_email/presentation/screens/phone_or_email_screen.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/screens/terms_and_conditions_screen.dart';
import 'package:code_example/features/auth/presentation/screens/verification_code_screen/verification_code_screen.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: ConnectivityWrapperScreen,
      initial: true,
      children: [
        AutoRoute(
          page: AuthStateWrapperScreen,
          initial: true,
        ),
        AutoRoute(
          page: UnauthorizedFlowWrapperScreen,
          children: [
            AutoRoute(page: SignInScreen, initial: true,),
            AutoRoute(page: ForgotPasswordScreen),
            AutoRoute(page: RecoveryPasswordInputScreen),
            AutoRoute(page: TermsAndConditionsScreen),
            AutoRoute(page: PhoneOrEmailScreen),
            AutoRoute(page: PasswordScreen),
            AutoRoute(page: NicknameScreen),
            AutoRoute(page: FullNameScreen),
            AutoRoute(page: BirthdayScreen),
            AutoRoute(page: VerificationCodeScreen),
          ],
        ),
        AutoRoute(
          page: AuthorizedFlowWrapperScreen,
          children: [
            //optional profile set up
            AutoRoute(page: GalleryImagePickerScreen),
            AutoRoute(page: TakePhotoScreen),
            AutoRoute(page: CropPhotoScreen),
            AutoRoute(page: AddPhotoScreen),
            AutoRoute(page: CityScreen),
            AutoRoute(page: BioScreen),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
