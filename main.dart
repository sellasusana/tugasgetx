import 'package:getx/Home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/add_matpel.dart';
import 'package:getx/inDec_screen.dart';
import 'package:getx/nilai_awal.dart';
import 'List_Screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: "/", page: () => MyApp()),
        GetPage(name: "/editkelas", page: () => EditKelas()),
        GetPage(name: "/indec", page: () => InDecscreen()),
        GetPage(name: "/listsc", page: () => ListScreen()),
        GetPage(name: "/matpel", page: () => addMatpel()),
        GetPage(name: "/snack", page: () => Snack()),
      ],
      debugShowCheckedModeBanner: false,
      home: Snack(),
    );
  }
}
