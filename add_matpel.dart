import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class addMatpel extends StatelessWidget {
  const addMatpel({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('add mapel'),
      ),
      body:Container(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'key'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'nama'),
            )
          ],
        ),

      ),
    );
  }
}