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
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text("GetX Dialog Alert"),
              subtitle: const Text("GEtx Subititle alert"),
              onTap: () {
                Get.defaultDialog(
                    title: "Delete Chat",
                    titlePadding: const EdgeInsets.only(top: 10),
                    middleText: "Are You Sure You Want to Delete ?",
                    contentPadding: const EdgeInsets.all(10),
                    confirm: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text("No")),
                    cancel:
                        TextButton(onPressed: () {}, child: const Text("Yes")));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("GetX BottomSheet"),
              subtitle: const Text("GEtx Subititle alert"),
              onTap: () {
                Get.bottomSheet(Container(
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.red,),
                  child: Column(children: [
                    ListTile(
                      leading: const Icon(Icons.light_mode),
                      title: const Text("Light Theme"),
                      onTap: () {
                        Get.changeTheme(ThemeData.light());
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.dark_mode),
                      title: const Text("Dark Theme"),
                      onTap: () {
                        Get.changeTheme(ThemeData.dark());
                      },
                    ),
                  ]),
                ));
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.snackbar("Suraj Yadav", "Bhai Tu Thik Ho Jayega",
            icon: const Icon(Icons.add),
            onTap: (snack) {},
            mainButton:
                TextButton(onPressed: () {}, child: const Text("Click")),
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.purple.shade100);
      }),
    );
  }
}
