import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnotherScreen extends StatefulWidget {
  const AnotherScreen({super.key});

  @override
  State<AnotherScreen> createState() => _AnotherScreenState();
}

class _AnotherScreenState extends State<AnotherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Tutorial",style: TextStyle(color: Colors.white),),
      ),
      body: Column(children: [
        Container(height: MediaQuery.of(context).size.height * .3,
      width: Get.width * .3,
      color: Colors.amber,
      child: const Center(child: Text("Hello World"),),),
      Container(height: MediaQuery.of(context).size.height * .4,
      width: Get.width * .3,
      color: Colors.red,
      child: const Center(child: Text("Hello World"),),)
      ],)
    );
  }
}
