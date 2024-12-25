import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/home_controller.dart';

import '../controller/home_controller.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());

    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: controller.students.length,
        itemBuilder: (context, index) {
          return ListTile(
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                controller.removeStudent(index);
              },
            ),
            title: Text(controller.students[index]['First Name']!),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "details");
        },
      ),
    );
  }
}
