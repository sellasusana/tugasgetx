import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Home_Controller.dart';

class Snack extends StatelessWidget {
  const Snack({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController hc = HomeController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          "Sekolah",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.bottomSheet(Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  padding: const EdgeInsets.all(10),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                          onPressed: () => Get.toNamed("/EditKelas"),
                          child: const Text("Edit Kelas")),
                      TextButton(
                          onPressed: () => Get.toNamed("/tambah-kurang"),
                          child: const Text("Tambah Kurang")),
                      TextButton(
                          onPressed: () => Get.toNamed("/list"),
                          child: const Text("list Siwa")),
                      TextButton(
                          onPressed: () => Get.toNamed("/keyView"),
                          child: const Text("Key input")),
                    ],
                  ),
                ));
              },
              icon: const Icon(Icons.ac_unit_outlined))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              color: Colors.purple,
              child: const Text("XII RPL 2",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              color: Colors.yellow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(() => Text("Jumlah Siswa : ${hc.angka}")),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            hc.addAngka();
                          },
                          icon: const Icon(Icons.add)),
                      IconButton(
                          onPressed: () {
                            hc.removeAngka();
                          },
                          icon: const Icon(Icons.remove)),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              color: Colors.yellow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Closed"),
                  Obx(() => Switch(
                      value: hc.tog.value,
                      activeColor:
                          hc.tog.value == true ? Colors.green : Colors.red,
                      inactiveThumbColor: Colors.red,
                      onChanged: (value) => hc.setTog(value)))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
