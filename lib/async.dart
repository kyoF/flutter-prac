import 'dart:async';
import 'dart:io';
import 'dart:developer' as dev;

class Async {
  void asynctest1() {
    dev.log('method begin');
    dev.log(DateTime.now().toString());
    dev.log('data1 start');
    dev.log(syncFunc('data1', 3));
    dev.log('data2 start');
    dev.log(syncFunc('data2', 2));
    dev.log('data3 start');
    dev.log(syncFunc('data3', 1));
  }

  String syncFunc(String name, int time) {
    sleep(Duration(seconds: time));
    return name + ':' + DateTime.now().toString();
  }
}
