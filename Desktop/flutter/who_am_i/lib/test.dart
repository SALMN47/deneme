import 'package:flutter/material.dart';
import 'package:who_am_i/karakterler/thom.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BIL BAKALIM',
        ),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => son()));
                },
                child: Image.asset('assets/1.png')),
            ElevatedButton(
                onPressed: () {}, child: Image.asset('assets/2.png')),
            ElevatedButton(onPressed: () {}, child: Image.asset('assets/3.png'))
          ],
        ),
      ),
    );
  }
}
