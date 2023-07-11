//url paths
const String emailVerificationUrl = '/auth/email-verification/';
const String phoneValidationUrl = '/auth/phone-validation/';
const String recoveryEmailValidationUrl = '/auth/password-recovery/email/';
const String recoveryPhoneValidationUrl = '/auth/password-recovery/phone/';
const String recoveryUpdatePasswordUrl = '/auth/password-recovery';
const String nicknameValidationUrl = '/auth/nickname';
const String sendCodeToPhoneUrl = '/auth/phone-verification/';
const String sendCodeToEmailUrl = '/auth/email-send-code';
const String verificationCodeValidationEmailUrl =
    '/auth/email-code-confirmation/';
const String verificationCodeValidationPhoneUrl = '/auth/phone-confirmation/';
const String signUpUrl = '/auth/sign-up';
const String signInFacebookUrl = '/auth/sign-in/facebook';
const String signInGoogleUrl = '/auth/google';
const String signInUrl = '/auth/sign-in';
const String updateUserUrl = '/users/update';

//keys
const validationResultKey = 'success';
const emailKey = 'email';
const phoneKey = 'phoneNumber';
const recoveryPhoneKey = 'phoneNumber';
const nicknameKey = 'nickName';
const birthdayKey = 'dateOfBirth';
const passwordKey = 'password';
const confirmPasswordKey = 'confirmPassword';
const fullNameKey = 'fullName';
const usernameKey = 'username';

//facebook keys and permissions
const String facebookTokenKey = 'userToken';
const String basicInfoPermission = 'basic_info';
const String openIdPermission = 'openid';
const String publicProfilePermission = 'public_profile';
const String emailPermission = 'email';
const String userBirthdayPermission = 'user_birthday';
const String userHometownPermission = 'user_hometown';
const String userLocationPermission = 'user_location';

//google keys
const String googleEmailKey = 'email';
const String googleIdKey = 'googleId';
const String googleFullNameKey = 'fullName';
const String googleDateOfBirthKey = 'dateOfBirth';
const String googlePhotoKey = 'photo';
const String apiKey =
    'AIzaSyAzJOm_PHeIjOXONSapZlaPXntMVzrtLGU&personFields=birthdays';
const String birthdaysKey = 'birthdays';
const String dateKey = 'date';
const String yearKey = 'year';
const String monthKey = 'month';
const String dayKey = 'day';

//google scope
const String googleScope = 'https://www.googleapis.com/auth/user.birthday.read';
const String authHeader = 'Authorization';

//google url
const String clientIdIos =
    '365563969036-sehfjlgbhvpkce5or2kig1cp1snl6qms.apps.googleusercontent.com';
const String peopleGoogleApisBaseUrl = 'https://people.googleapis.com/';
const String googleApisBaseUrl = 'https://www.googleapis.com/';
const String peopleGoogleApisInfo =
    '${peopleGoogleApisBaseUrl}v1/people/me?key=$apiKey';
