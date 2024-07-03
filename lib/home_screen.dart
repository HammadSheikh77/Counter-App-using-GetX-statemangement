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
      drawer: Drawer(),
      appBar: AppBar(
        title: const Center(child: Text('GetX Statemangement')),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          // Container(
          //   // height: MediaQuery.of(context).size.height*0.1,
          //   // width: MediaQuery.of(context).size.width*0.6,
          //   height: Get.height*0.1,
          //   width: Get.width*0.6,
          //   color:Colors.red,
          //   child: Center(child: Text('GetX')),
          // ),
          Card(
            child: ListTile(
              title: const Text('GetX Dialog Alert'),
              subtitle: const Text('GetX dialog alert with GetX'),
              onTap: () {
                Get.defaultDialog(
                  title: 'delete chat',
                  titlePadding: const EdgeInsets.only(top: 20),
                  contentPadding: const EdgeInsets.all(20),
                  middleText: 'are you sure you want to delete this chat?',
                  // textCancel: 'No',
                  // textConfirm: 'Yes',
                  // buttonColor: Colors.blue,
                  confirm: TextButton(
                      onPressed: () {
                        // Navigator.pop(context);
                        Get.back();
                      },
                      child: const Text('Yes')),
                  cancel: TextButton(
                      onPressed: () {
                        // Navigator.pop(context);
                        Get.back();
                      },
                      child: const Text('No')),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('GetX Bottom Sheet'),
              subtitle: const Text('GetX dialog alert with GetX'),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.light_mode),
                          title: const Text('Light Theme'),
                          onTap: () {
                            Get.back();
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.dark_mode),
                          title: const Text('Dark Theme'),
                          onTap: () {
                            Get.back();
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {
            Get.snackbar(
              'Welcome',
              "Hammad",
              duration: const Duration(seconds: 2),
              snackPosition: SnackPosition.BOTTOM,
            );
          }),
    );
  }
}
