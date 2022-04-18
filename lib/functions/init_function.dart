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
}