import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement_flutter/examplethree_controller.dart';

class ExampleThree extends StatefulWidget {
  const ExampleThree({super.key});

  @override
  State<ExampleThree> createState() => _ExampleThreeState();
}

class _ExampleThreeState extends State<ExampleThree> {
  final ExampleThreeController exampleThreeController =
      Get.put(ExampleThreeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Example Three'),
        backgroundColor: Colors.blue,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Notifications'),
          Obx(() => Switch(
              value: exampleThreeController.notification.value,
              onChanged: (value) {
                exampleThreeController.setNotifications(value);
              })),
        ],
      ),
    );
  }
}
