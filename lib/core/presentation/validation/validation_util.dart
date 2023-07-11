const int minNicknameLength = 8;
const int maxNicknameLength = 20;
const int minFullNameLength = 2;
const int maxFullNameLength = 35;
const int phoneNumberLength = 9;
final RegExp emailValidationRegExp = RegExp(
    r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\])|(([a-zA-Z\-\d]+\.)+[a-zA-Z]{2,}))$');
final RegExp passwordValidationRegExp =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?\d)(?=.*?[!@#$&*~]).{8,}$');
final RegExp passwordCharactersAmountValidationRegExp = RegExp(r'^.{8,}$');
final RegExp passwordAtLeastOneUpperCaseRegExp = RegExp(r'(?=.*[A-Z])');
final RegExp passwordAtLeastOneLowerCaseRegExp = RegExp(r'(?=.*[a-z])');
final RegExp passwordAtLeastOneDigitRegExp = RegExp(r'(?=.*?\d)');
final RegExp passwordAtLeastOneSpecialCharacterRegExp =
    RegExp(r'(?=.*?[!@#$&*~])');
final RegExp nicknameValidationRegExp = RegExp(r"^[a-zA-Z1-9-'_.]{8,20}$");
final RegExp fullNameValidationRegExp = RegExp(
    r"^(?=.{2,35}$)[єЄїЇыЫёЁа-яА-Яa-zA-Z'\-.]{2,35}(?:\s[єЄїЇыЫёЁа-яА-Яa-zA-Z'\-.]{1,35})?[єЄїЇыЫёЁа-яА-Яa-zA-Z'\-.]{0,35}$");
const String defaultDateFormat = 'MMMM d, yyyy';
const int minUserAge = 16;
const int oldestYearAllowed = 1930;
final DateTime oldestDate = DateTime(oldestYearAllowed);
final DateTime newestDate = DateTime(
    DateTime.now().year - DateTime(minUserAge).year,
    DateTime.now().month,
    DateTime.now().day);
