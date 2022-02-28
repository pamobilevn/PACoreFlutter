import 'package:flutter/material.dart';
import 'package:pa_core_flutter/dialogs/default_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PaFunctionUtils {
  showDialogRating(BuildContext context, String idApp, int open) async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    if (!pref.containsKey("RATING_REMIND")) {
      pref.setInt("RATING_REMIND", 1);
      print(pref.getInt("RATING_REMIND"));
    } else {
      int openTime = pref.getInt("RATING_REMIND")!;
      pref.remove("RATING_REMIND");
      pref.setInt("RATING_REMIND", openTime + 1);
      print(pref.getInt("RATING_REMIND"));
    }
    if (pref.getInt('RATING_REMIND')! % open == 0) {
      PACoreShowDialog.remindRatingDialog(context, pref, idApp);
    }
  }
}
