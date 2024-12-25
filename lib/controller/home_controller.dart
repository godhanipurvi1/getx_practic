import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController rollNo = TextEditingController();
  TextEditingController STD = TextEditingController();
  List<Map<String, String>> students = [];
  String? fName;
  String? lName;
  String? rollNoVar;
  String? STDVar;
  void saveData() {
    fName = firstName.value.text;
    lName = lastName.value.text;
    rollNoVar = rollNo.value.text;
    STDVar = STD.value.text;
    update();
  }

  void addStudent(String fName, String lName, String rollNoVar, STDVar) {
    students.add({
      "First Name": fName,
      "Last  Name": lName,
      "RollNo": rollNoVar,
      "STDVar": STDVar,
    });
    update();
  }

  void removeStudent(int index) {
    students.removeAt(index);

    update();
  }
}
