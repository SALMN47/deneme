import 'package:flutter/material.dart';
import 'package:who_am_i/test.dart';

class Cat extends StatefulWidget {
  const Cat({super.key});

  @override
  State<Cat> createState() => _CatState();
}

class _CatState extends State<Cat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/1.png'),
            SizedBox(
              height: 50,
            ),
            Text(
              'Karakterin',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '-Esmer',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    '-Kisa sacli',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    '-Renkli gozlu',
                    style: Theme.of(context).textTheme.headlineMedium,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Test()));
                },
                child: Text(
                  'HAZIRIM',
                  style: TextStyle(fontSize: 40, color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
