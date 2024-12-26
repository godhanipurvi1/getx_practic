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
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
              // tileColor: Colors.lightBlue[50],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  controller.removeStudent(index);
                },
              ),
              title: Text(
                  "${controller.students[index]['FirstName']!} ${controller.students[index]['LastName']!}"),
              subtitle: Text(controller.students[index]["RollNo"]!),
            ),
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
