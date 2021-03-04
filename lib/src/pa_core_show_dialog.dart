library pa_core_flutter;

import 'package:flutter/material.dart';

class PACoreShowDialog {
  static policyDialog(BuildContext context,
      {@required String title,
        @required Widget content,
        @required Function funcOk}) async {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Container(
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.shortestSide * 0.2),
          child: AlertDialog(
            title: Text(title),
            content: content,
            actions: [
              TextButton(
                onPressed: () async {
                  funcOk();
                },
                child: FittedBox(
                  child: Text(
                    'YOU ACCEPTED ON ',
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}