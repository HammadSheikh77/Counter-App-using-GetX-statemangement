import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement_flutter/counter_controller.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(child: Text('GetX Statemangement')),
        ),
        body: Center(
            child: Obx(
          () => Text(
            controller.counter.toString(),
            style: const TextStyle(fontSize: 60),
          ),
        )),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () {
              controller.increamentCounter();
            }),
      ),
    );
  }
}
