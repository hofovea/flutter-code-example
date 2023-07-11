import 'package:alt_sms_autofill/alt_sms_autofill.dart';
import 'package:flutter/services.dart';

class SmsAutofillService {
  static Future<void> listenForSms(
    void Function(String smsText) onSmsReceivedCallback,
    Function onErrorCallback,
  ) async {
    try {
      String? incomingSmsText = await AltSmsAutofill().listenForSms;
      if (incomingSmsText != null) {
        onSmsReceivedCallback(incomingSmsText);
      }
    } on PlatformException {
      onErrorCallback();
    }
  }
}
