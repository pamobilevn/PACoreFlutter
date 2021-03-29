import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class PACoreGetX {
  final box = GetStorage();
  int openTimes = 0;

  countOpenTime(Function funcRate) {
    if (!box.hasData('OPEN_TIMES')) {
      box.write('OPEN_TIMES', openTimes);
    } else {
      openTimes = box.read('OPEN_TIMES');
      if (openTimes % 3 == 0) {
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
            TextButton(onPressed: funcRate, child: Text('Rate')),
          ],
        ));
      }
      box.write('OPEN_TIMES', openTimes++);
    }
  }
}
