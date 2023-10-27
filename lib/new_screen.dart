import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/example_controller.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  ExampleController exampleController = Get.put(ExampleController());
  bool notification = false;
  @override
  Widget build(BuildContext context) {
      print('something');
    return Scaffold(
      
      appBar: AppBar(
        title: const Text("State Management"),
      ),
      
      body: Column(children: [
      
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Notification"),
          Obx(() =>   Switch(value: exampleController.notification.value, onChanged: ( value) {
             exampleController.notification.value = value;
              // setState(() {
                
              // });
            }))
          ],
        )
      ]),
    );
  }
}
