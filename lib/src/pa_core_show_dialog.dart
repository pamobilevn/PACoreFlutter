library pa_core_flutter;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PACoreShowDialog {

  // @title: title Dialog
  // @content: widget show content inside dialog
  // @policyAcceptTime: show time text
  // @funcOk action when click OK

  static policyDialog(BuildContext context,
      {@required String title,
        @required Widget content,
        @required String policyAcceptTime,
        @required Function funcOk
      }) async => showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) => Container(
        margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.shortestSide * 0.15),
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
                  'YOU ACCEPTED ON ' + policyAcceptTime,
                ),
              ),
            ),
          ],
        ),
      )
    );


  // title: title for dialog
  // content widget show content
  // isPremium: check to show ads or not
  // funcOkText, funcCancelText: text for buttons

  static exitAppDialog(BuildContext context,
      {@required String title,
        @required String content,
        @required bool isPremium,
        @required Widget adsWidget,
        @required String funcOkText,
        @required String funcCancelText,
        bool canDismiss = true}) async {
    return showDialog(
      context: context,
      builder: (BuildContext ctx) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 70,
                child: Center(
                  child: Text(
                    content,
                    maxLines: 2,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 35,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Center(
                              child: Text(funcCancelText,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold))),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          SystemNavigator.pop();
                        },
                        child: Container(
                          height: 35,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Center(
                              child: Text(funcOkText,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold))),
                        ),
                      )
                    ],
                  )),
              const SizedBox(height: 10),
              isPremium
                  ? SizedBox()
                  : Container(
                  height: 275,
                  width: double.infinity,
                  color: Color.fromRGBO(247, 247, 247, 1),
                  child: adsWidget
              ),
            ],
          ),
        ),
      )
    );
  }


  static customAlertDialog(BuildContext context,
      {@required String title,
        @required Widget content,
        @required TextButton trueButton,
        TextButton falseButton}) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) => Container(
          child: AlertDialog(
            title: Text(title),
            content: content,
            actions: <Widget>[
              falseButton != null ? falseButton : null,
              trueButton,
            ],
          ),
        ));
  }

  static mainAlertDialog(BuildContext context,
      {@required String title,
        @required Widget content,
        @required Function funcOk,
        Function funcCancel,
        String funcOkText = 'OK',
        String funcCancelText = 'CANCEL',
        bool canDismiss = true}) async {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) => Container(
          child: AlertDialog(
            title: Text(title),
            content: content,
            actions: <Widget>[
              TextButton(
                onPressed: funcCancel != null ? funcCancel : () => Navigator.pop(context),
                child: Text(funcCancelText.toUpperCase()),
              ),
              TextButton(
                onPressed: funcOk,
                child: Text(funcOkText.toUpperCase()),
              ),
            ],
          ),
        ));
  }


  //ask purchase dialog
  static askPremiumDialog(BuildContext context, {String title, String contentText,@required  Function funcPurchase}) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title != null ? title :  'Premium Required'),
            content: Text(contentText != null ? contentText :
                'Premium user unlock all features and see NO ADS!! Upgrade?'),
            actions: [
              FlatButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  'LATER',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              FlatButton(
                onPressed: funcPurchase,
                child: Text('UPGRADE'),
              ),
            ],
          );
        });
  }

}