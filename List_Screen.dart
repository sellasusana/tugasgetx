import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/Home_Controller.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController hc = Get.find();
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
            controller: hc.namaSiswa,
            decoration: InputDecoration(label: Text("inputnama")),
          ),
            TextField(
              controller: hc.namaSiswa,
              decoration: InputDecoration(label: Text("inputnama")),
            ),
            ElevatedButton(
              onPressed: (){
                hc.AddList(hc.namaSiswa.text);
              },
              child: Text("sumbit")),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: hc.AddNamaSiswa.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('${hc.AddNamaSiswa[index]}'),
                    );
                  },
                )
            ))

            
          ],
         
        )
      ),
    );
  }
}
