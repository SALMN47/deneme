import 'package:flutter/material.dart';
import 'package:who_am_i/entrence.dart';

class son extends StatefulWidget {
  const son({super.key});

  @override
  State<son> createState() => _sonState();
}

class _sonState extends State<son> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              maxLines: 1,
              "! HELAL OLSUN DAYI OGLU!",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(
              height: 150,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Giris()));
                },
                child: Container(
                    height: 100,
                    width: 200,
                    child: Center(
                        child: Text(
                      'SIRA SENDE',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ))))
          ],
        ),
      ),
    );
  }
}
