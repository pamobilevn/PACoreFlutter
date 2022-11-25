library pa_core_flutter;

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pa_core_flutter/src/string.dart';

class PACoreShowDialog {
  // @title: title Dialog
  // @content: widget show content inside dialog
  // @policyAcceptTime: show time text
  // @funcOk action when click OK

  /// Mở dialog policy: hiện AlertDialog. <br>
  /// Khi policyAcceptTime = "" thì hiện textButton OK, ngược lại hiện policyAcceptTime

  static policyDialog(BuildContext context,
      {required String title,
      String? policyAcceptTime,
      String? policyText,
      required Function funcOk}) async {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) => Container(
              margin: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.shortestSide * 0.15),
              child: AlertDialog(
                title: Text(title, style: (TextStyle(fontWeight: FontWeight.w700))),
                content: SingleChildScrollView(
                  child: policyText.isNull
                      ? Text(PRIVACY_POLICY)
                      : Text(policyText!),
                ),
                actions: [
                  TextButton(
                    onPressed: () async {
                      funcOk();
                    },
                    child: FittedBox(
                      child: GetPlatform.isAndroid
                          ? Text(
                              policyAcceptTime!.isNotEmpty
                                  ? 'YOU ACCEPTED ON ' + policyAcceptTime
                                  : "OK",
                          style: (TextStyle(fontWeight: FontWeight.w700))
                            )
                          : Text('OK',  style: (TextStyle(fontWeight: FontWeight.w700))),
                    ),
                  ),
                ],
              ),
            ));
  }

  // title: title for dialog
  // content widget show content
  // isPremium: check to show ads or not
  // funcOkText, funcCancelText: text for buttons

  /// isPremium: check premium để hiện ads, adsWidget: ad,
  /// Bấm OK để thoát app, Cancel để trở lại

  static exitAppDialog(
    BuildContext context, {
    required bool isPremium,
    required Widget adsWidget,
  }) async {
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
                          'Exit',
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
                              onTap: () {
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
                                    child: Text("Cancel",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold))),
                              ),
                            ),
                            InkWell(
                              onTap: () {
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
                                    child: Text("Quit",
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
                            child: adsWidget),
                  ],
                ),
              ),
            ));
  }

  /// Như exitAppDialog nhưng custom dc các tham số
  static exitAppDialogCustom(BuildContext context,
      {required String title,
      required String content,
      required bool isPremium,
      required Widget adsWidget,
      required String funcOkText,
      required String funcCancelText,
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
                              onTap: () {
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
                              onTap: () {
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
                            child: adsWidget),
                  ],
                ),
              ),
            ));
  }

  // title: title for dialog
  // content widget show content
  // trueButton: widget right button
  // falseButton: widget left button

  /// title: title, widget content: content cho dialog.

  static customAlertDialog(BuildContext context,
      {required String title,
      required Widget content,
      required TextButton rightButton,
      TextButton? leftButton}) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) => Container(
              child: AlertDialog(
                title: Text(title),
                content: content,
                actions: <Widget>[
                  leftButton != null ? leftButton : SizedBox(),
                  rightButton,
                ],
              ),
            ));
  }

  // title: title for dialog
  // content widget show content
  //  funcOk: action when click ok
  // funcCancel action when click cancel
  // funcOkText: text for funcOk
  //  funcCancelText: text for funcCancel
  //  bool canDismiss: barrierDismissible dialog
  /// Hiển thị Alert Dialog

  static mainAlertDialog(BuildContext context,
      {required String title,
      required Widget content,
      required Function funcOk,
      Function? funcCancel,
      String funcOkText = 'OK',
      String funcCancelText = 'CANCEL',
      bool canDismiss = true}) async {
    return showDialog(
        context: context,
        barrierDismissible: canDismiss,
        builder: (BuildContext context) => Container(
              child: AlertDialog(
                title: Text(title),
                content: content,
                actions: <Widget>[
                  TextButton(
                    onPressed: () => {
                      funcCancel != null
                          ? funcCancel
                          : () => Navigator.pop(context)
                    },
                    child: Text(funcCancelText.toUpperCase()),
                  ),
                  TextButton(
                    onPressed: () => funcOk,
                    child: Text(funcOkText.toUpperCase()),
                  ),
                ],
              ),
            ));
  }

  // title: title for dialog
  // contentText: content
  //  funcPurchase: call function purchase

  /// ask purchase dialog <br>
  /// Gọi hàm purchase từ IAP
  static askPremiumDialog(BuildContext context,
      {String? title, String? contentText, required Function funcPurchase}) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title != null ? title : 'Premium Required'),
            content: Text(contentText != null
                ? contentText
                : 'Premium user unlock all features and see NO ADS!! Upgrade?'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  'LATER',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              TextButton(
                onPressed: () => funcPurchase,
                child: Text('UPGRADE'),
              ),
            ],
          );
        });
  }

  // String title: title for dialog
  // bool isPremium: check premium
  // Function showAds: show ads when premium is false
  // String currentValue: text when open
  // bool isNumber: input type number or not
  // bool multiLine: input field multiline

  ///
  static inputNameDialog(BuildContext context,
      {required String title,
      required bool isPremium,
      required Function showAds,
      required String currentValue,
      required bool isNumber,
      required bool multiLine}) async {
    String value = currentValue;
    final textController = TextEditingController();
    textController.text = currentValue;
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                width: MediaQuery.of(context).size.shortestSide,
                child: TextField(
                  autofocus: true,
                  controller: textController,
                  keyboardType: isNumber
                      ? TextInputType.number
                      : multiLine
                          ? TextInputType.multiline
                          : TextInputType.text,
                  onChanged: (onChangeValue) {
                    value = onChangeValue;
                  },
                ),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text("CANCEL"),
              ),
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  if (!isPremium) {
                    showAds();
                  }
                  int time = DateTime.now().millisecondsSinceEpoch;
                  Navigator.of(context).pop(time.toString() + "_" + value);
                  print(time.toString() + "_" + value);
                },
              ),
            ],
          );
        });
  }

  // title: title for dialog
  //  String currentValue: text when open
  // int textMaxLength: max character input
  // String currentValue: text when open
  // bool isNumber: input type number or not
  // bool multiLine: input field multiline

  static inputDialog(BuildContext context,
      {String? title,
      String? currentValue,
      bool? isNumber,
      int? textMaxLength,
      required bool? multiLine}) async {
    String? value = currentValue;
    final textController = TextEditingController();
    if (currentValue != null) {
      textController.text = currentValue;
    }
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title!),
            content: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                width: MediaQuery.of(context).size.shortestSide,
                child: TextField(
                  maxLength: textMaxLength != null ? textMaxLength : null,
                  autofocus: true,
                  controller: textController,
                  maxLines: multiLine! ? 3 : 1,
                  keyboardType: isNumber!
                      ? TextInputType.number
                      : multiLine
                          ? TextInputType.multiline
                          : TextInputType.text,
                  onChanged: (onChangeValue) {
                    value = onChangeValue;
                  },
                ),
              ),
            ),
            actions: [
              TextButton(
                child: Text(
                  'Cancel'.toUpperCase(),
                  style: TextStyle(color: Colors.grey),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              TextButton(
                child: Text('Ok'.toUpperCase()),
                onPressed: () {
                  Navigator.of(context).pop(value);
                },
              ),
            ],
          );
        });
  }

  // policy text

  static pickYearDialog(BuildContext context, {String? policyText}) {
    String maxAdContent = "";
    return Get.dialog(
      WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: AlertDialog(
          title: Text('Your Year of Birth', style: (TextStyle(fontWeight: FontWeight.w700))),
          content: PickYearWidget(policyText),
          backgroundColor: Colors.white,
          actions: <Widget>[
            TextButton(
              child: Text(
                'Quit'.toUpperCase(),
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700),
              ),
              onPressed: () {
                SystemNavigator.pop();
              },
            ),
            TextButton(
              child: Text('ACCEPT',   style: (TextStyle(fontWeight: FontWeight.w700))),
              onPressed: () async {
                String privacyPolicyAcceptTime =
                    DateTime.now().toString().substring(0, 16).toString();

                print(_PickYearWidgetState.year);

                if (DateTime.now().year - _PickYearWidgetState.year > 16) {
                  maxAdContent = 'MAX_AD_CONTENT_RATING_MA';
                }
                if (DateTime.now().year - _PickYearWidgetState.year <= 16) {
                maxAdContent = 'MAX_AD_CONTENT_RATING_T';
                }
                if (DateTime.now().year - _PickYearWidgetState.year <= 12) {
                  maxAdContent = 'MAX_AD_CONTENT_RATING_PG';
                }
                if (DateTime.now().year - _PickYearWidgetState.year <= 7) {
                  maxAdContent = 'MAX_AD_CONTENT_RATING_G';
                }
                final box = GetStorage();
                if (!box.hasData("USER'S_AGE")) {
                  box.write("USER'S_AGE",
                      DateTime.now().year - _PickYearWidgetState.year);
                  box.write("MAX_AD_CONTENT", maxAdContent);
                  box.write("IS_VERIFY_AGE", true);
                  box.write("PRIVACY_POLICY",
                      DateTime.now().toString().substring(0, 16).toString());
                } else {
                  box.remove("USER'S_AGE");
                  box.remove("MAX_AD_CONTENT");
                  box.remove("IS_VERIFY_AGE");
                  box.remove("PRIVACY_POLICY");
                  box.write("USER'S_AGE",
                      DateTime.now().year - _PickYearWidgetState.year);
                  box.write("MAX_AD_CONTENT", maxAdContent);
                  box.write("IS_VERIFY_AGE", true);
                  box.write("PRIVACY_POLICY",
                      DateTime.now().toString().substring(0, 16).toString());
                }
                // Navigator.of(context).pop(privacyPolicyAcceptTime);
                Get.back(result: privacyPolicyAcceptTime);
              },
            ),
          ],
        ),
      ),
      barrierDismissible: false,
    );
  }
}

class PickYearWidget extends StatefulWidget {
  PickYearWidget(this.policyText);
  final String? policyText;

  @override
  _PickYearWidgetState createState() {
    return _PickYearWidgetState();
  }
}

class _PickYearWidgetState extends State<PickYearWidget> {
  static int year = DateTime.now().year - 3;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Container> yearNumberWidget =
        List.generate(DateTime.now().year - 3 - 1970 + 1, (index) {
      return Container(
        child: Center(
          child: Text(
            (1970 + index).toString(),
            style: TextStyle(color: Colors.black),
          ),
        ),
      );
    });

    return Wrap(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.shortestSide,
                height: MediaQuery.of(context).size.height / 4,
                child: CupertinoPicker(
                  looping: true,
                  scrollController: FixedExtentScrollController(
                      initialItem: (DateTime.now().year - 3 - 1970)),
                  itemExtent: 72,
                  onSelectedItemChanged: (index) {
                    year = (1970 + index);
                  },
                  children: yearNumberWidget,
                )),
            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: "I accept the "),
                  TextSpan(
                      text: "Privacy Policy",
                      style: TextStyle(decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          PACoreShowDialog.policyDialog(context,
                              title: "Policy",
                              policyText: PRIVACY_POLICY,
                              policyAcceptTime: "", funcOk: () {
                            Navigator.pop(context);
                            print("ok");
                          });
                        }),
                  TextSpan(text: " to use this application"),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
