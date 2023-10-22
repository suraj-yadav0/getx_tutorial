import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tutorial"),
      ),
      body: const Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.snackbar("Suraj Yadav", "Bhai Tu Thik Ho Jayega",
            icon: const Icon(Icons.add),onTap: (snack) {
              
            },
            mainButton: TextButton(onPressed: (){}, child: const Text("Click")),
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.purple.shade100);
      }),
    );
  }
}
