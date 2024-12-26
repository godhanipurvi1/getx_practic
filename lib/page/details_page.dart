import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/home_controller.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 500,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: Offset(4, 4)),
              ],
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextField(
                      controller: controller.firstName,
                      decoration: InputDecoration(
                          labelText: "First Name",
                          hintText: "enter your first name",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))))),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                      controller: controller.lastName,
                      decoration: InputDecoration(
                          labelText: "Last Name",
                          hintText: "enter your last name ",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))))),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                      controller: controller.rollNo,
                      decoration: InputDecoration(
                          labelText: " Roll No",
                          hintText: "enter your rollno",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))))),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                      controller: controller.STD,
                      decoration: InputDecoration(
                          labelText: "STD",
                          hintText: "enter your STD",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))))),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            controller.reset();
                          },
                          child: Text("reset")),
                      SizedBox(width: 20),
                      ElevatedButton(
                          onPressed: () {
                            controller.saveData();

                            controller.addStudent(
                                controller.fName!,
                                controller.lName!,
                                controller.rollNoVar!,
                                controller.STDVar!);
                            Navigator.pushNamed(context, "/");
                          },
                          child: Text("submit")),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )));
  }
}
