import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:launch_review/launch_review.dart';

class PACoreGetX {
  final box = GetStorage();

  int openTimes;
  countOpen(String packageName) async  {
    if (!box.hasData('OPEN_TIMES')) {
      box.write('OPEN_TIMES', 1);
    } else {
      openTimes = box.read('OPEN_TIMES');
      if (openTimes % 3 == 0)  {
        Get.dialog(AlertDialog(
          title: Text('Thank you'),
          content: Text(
              "Would you please rate me? If you need more features, please post your suggestion in review comment!"),
          actions: [
            TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('Cancel')),
            TextButton(onPressed: () {

              GetPlatform.isAndroid
                  ? LaunchReview.launch(
                  androidAppId: packageName, writeReview: true)
                  : LaunchReview.launch(
                  iOSAppId: packageName,
                  writeReview: true);
              Get.back();
            }, child: Text('Rate')),
          ],
        ));
      }
      print(box.read('OPEN_TIMES').toString());
      box.write('OPEN_TIMES', openTimes+1);
    }
  }


  checkUpdate(int versionRemote, int versionInApp) async {

    if(versionInApp < versionRemote){
      Get.dialog(AlertDialog(
        title: Text('New update'),
        content: Text(
            'We have a new update, please update to newest version!!!'),
        actions: [
          TextButton(onPressed: () => Get.back(), child: Text('Cancel')),
          TextButton(onPressed: (){
            LaunchReview.launch(
                androidAppId: 'co.pamobile.pokemon.cardmaker',
                iOSAppId: '1226345628',
                writeReview: false);
            Get.back();
          },child: Text('Update'),)
        ],
      ));
    }
  }
}
