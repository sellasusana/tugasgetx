import 'package:flutter/material.dart';

class InDecscreen extends StatelessWidget {
  const InDecscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.add)),
            Text("nilai"),
            IconButton(onPressed: (){}, icon: Icon(Icons.remove)),
          ],
        ),
      ),
    );
  }
}