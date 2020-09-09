import 'package:flutter/material.dart';
import 'icon_menu.dart';
import 'package:random_color/random_color.dart';

class LatihanSatu extends StatefulWidget {
  @override
  _LatihanSatuState createState() => _LatihanSatuState();
}

class _LatihanSatuState extends State<LatihanSatu> {
  Color gantiWarna;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Praktek 1 Pertemuan 3'),
      ),
      body: Column(
        children: [
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconMenu(
                namaMenu: 'Calls',
                warnaIconDanText: gantiWarna,
                gambarIcon: Icons.call,
              ),
              IconMenu(
                namaMenu: 'Route',
                warnaIconDanText: gantiWarna,
                gambarIcon: Icons.navigation,
              ),
              IconMenu(
                namaMenu: 'Share',
                warnaIconDanText: gantiWarna,
                gambarIcon: Icons.share,
              ),
            ],
          )),
          RaisedButton(
            onPressed: () {
              //tempat mengisi code fungsi
            },
            child: Text('Change Color'),
          ),
          RaisedButton(
            onPressed: () {
              setState(() {
                RandomColor randomColor = RandomColor();
                gantiWarna = randomColor.randomColor();
              });
            },
            child: Text('Change Color'),
          ),
        ],
      ),
    );
  }
}
