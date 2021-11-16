import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_except_sandbox/home/home.dart';

import 'home/home_binding.dart';
import 'initial_binding.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return GetCupertinoApp(
      initialBinding: InitialBinding(),
      defaultTransition: Transition.cupertino,
      getPages: [
        GetPage(
          name: Navigator.defaultRouteName,
          page: () => const Home(),
          binding: HomeBinding(),
        )
      ],
    );
  }
}
