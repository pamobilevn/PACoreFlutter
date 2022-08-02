import 'dart:io';

import 'package:flutter/material.dart';
import 'package:launch_review/launch_review.dart';
class InitFunction {

  checkUpdate(BuildContext ctx, int versionRemote, int versionInApp, String androidAppId, String iosAppId) async {
    if(versionInApp < versionRemote){
      showDialog(
        context: ctx,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('New update'),
            content: Text(
                'We have a new update, please update to newest version!!!'),
            actions: [
              TextButton(onPressed: () => Navigator.pop(context), child: Text('Cancel')),
              TextButton(onPressed: (){
                LaunchReview.launch(
                    androidAppId: androidAppId,
                    iOSAppId: iosAppId,
                    writeReview: false);
                Navigator.pop(context);
              },child: Text('Update'),)
            ],
          );
        }, );
    }
  }

  rateDialog(BuildContext context, String packageName){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text('Thank you'),
        content: Text(
            "Would you please rate me? If you need more features, please post your suggestion in review comment!"),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel', style: TextStyle(color: Theme.of(context).colorScheme.onBackground),)),
          TextButton(onPressed: () {

            Platform.isAndroid
                ? LaunchReview.launch(
                androidAppId: packageName, writeReview: true)
                : LaunchReview.launch(
                iOSAppId: packageName,
                writeReview: true);
            Navigator.pop(context);
          }, child: Text('Rate',style: TextStyle(color: Theme.of(context).colorScheme.onBackground))),
        ],
      );
    });
  }
}

