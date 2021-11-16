import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: SafeArea(
      child: Column(
        children: [
          const Text('This is Home'),
          CupertinoButton(
              child: const Text('Press Me'),
              onPressed: press)
        ],
      ),
    ));
  }

  Future<void> press() async {
    controller.onPress();
  }
}


