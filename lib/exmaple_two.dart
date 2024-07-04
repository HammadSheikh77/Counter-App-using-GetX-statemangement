import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement_flutter/exampletwo_countroller.dart';

class ExampleTwo extends StatefulWidget {
  const ExampleTwo({super.key});

  @override
  State<ExampleTwo> createState() => _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {
  final ExampleTwoController exampleTwoController =
      Get.put(ExampleTwoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: const Text('GetX Example Two')),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Obx(
            () => Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.5,
              color: Colors.red.withOpacity(exampleTwoController.opacity.value),
            ),
          ),
          Obx(() => Slider(
              value: exampleTwoController.opacity.value,
              onChanged: (value) {
                exampleTwoController.opacity.value = value;
              }))
        ],
      ),
    );
  }
}
