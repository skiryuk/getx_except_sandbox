import 'dart:async';

import 'package:flutter/cupertino.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  /*FlutterError.onError =
      (FlutterErrorDetails error) {
        print("1");
        print(error);
      };*/
  await runZonedGuarded<Future<void>>(() async {
    FlutterError.onError =
        (FlutterErrorDetails error) async {
          print("2");
          print(error);
    };
    runApp(AppWidget());
  }, (Object error, StackTrace stackTrace) async {
    // _logState.logError(error, stackTrace);
    print("3");
    print(error);
  });
}
