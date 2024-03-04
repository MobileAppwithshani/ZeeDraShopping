import 'package:flutter/cupertino.dart';

class KeyboardUtilitiy {
  static void hideKeyboard(BuildContext context) {
    FocusNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
}
