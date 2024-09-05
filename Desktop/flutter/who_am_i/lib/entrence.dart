import 'package:flutter/material.dart';
import 'package:who_am_i/karakterler/cat.dart';

class Giris extends StatefulWidget {
  const Giris({super.key});

  @override
  State<Giris> createState() => _GirisState();
}

class _GirisState extends State<Giris> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[500],
        appBar: AppBar(
          title: Text(
            'Karakterini Sec',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              padding: EdgeInsets.all(200),
              scrollDirection: Axis.horizontal,
              children: [
                butonum(sayi: 1),
                butonum(sayi: 2),
                butonum(sayi: 3),
              ],
            ),
          ),
        ));
  }
}

class butonum extends StatelessWidget {
  butonum({
    required this.sayi,
    super.key,
  });
  final int sayi;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          if (sayi == 1) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Cat()));
          }
        },
        child: Image.asset('assets/$sayi.png'));
  }
}
