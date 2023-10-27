import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/controller_two.dart';
import 'package:getx_tutorial/counter_controller.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final CounterController controller = Get.put(CounterController());


  final ExampleTwoController exampleTwoController = Get.put(ExampleTwoController());

  double opacity = .4;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("State Management"),
      ),
      // body: Center(
      //   child: Obx(() {
      //     return Text(
      //       controller.counter.toString(),
      //       style: const TextStyle(fontSize: 60),
      //     );
      //   }),
      // ),

      // floatingActionButton: FloatingActionButton(onPressed: (){controller.incrementCounter();}),
      body: Column(children: [
Obx(() =>         Container(
          height: 200,
          width: 2000,
          color: Colors.red.withOpacity(exampleTwoController.opacity.value),
        ),),
Obx(() =>         Slider(value: exampleTwoController.opacity.value, onChanged: (value) {
       exampleTwoController.setOpacity(value);

        }))
      ]),
    );
  }
}
