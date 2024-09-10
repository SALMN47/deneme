import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Demo1(),
    );
  }
}

class Demo1 extends StatefulWidget {
  Demo1({super.key});
  TextEditingController mycontroller = TextEditingController();
  String name = '';

  @override
  State<Demo1> createState() => _Demo1State();
}

class _Demo1State extends State<Demo1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kayit sayfasi'),
      ),
      body: Center(
          child: Column(
        children: [
          Text(widget.name),
          TextField(
            controller: widget.mycontroller,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  widget.name = widget.mycontroller.text;
                });
              },
              child: Text('LOG IN'))
        ],
      )),
    );
  }
}
