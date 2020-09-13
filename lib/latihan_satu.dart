import 'package:flutter/material.dart';
import 'icon_menu.dart';
import 'package:random_color/random_color.dart';

class LatihanSatu extends StatefulWidget {
  @override
  _LatihanSatuState createState() => _LatihanSatuState();
}

class _LatihanSatuState extends State<LatihanSatu> {
  Color gantiWarna; // untuk ganti warna icon
  RandomColor randomColor =
      RandomColor(); // fungsi untuk memilih warna secara acak
  bool switchButtonState = false; // nilai awal untuk switch button
  String pilihanWarna; // nilai awal radio button 'null'
  bool pilihanCheckbox = false; // nilai awal checkbox

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pertemuan 4'),
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
              setState(() {
                gantiWarna = randomColor.randomColor();
              });
            },
            child: Text('Change Color'),
          ),
          Switch(
            value: switchButtonState,
            onChanged: (bool value) {
              setState(() {
                switchButtonState = value;
                switchButtonState == true
                    ? gantiWarna = Colors.black
                    : gantiWarna = Colors.red;
              });
            },
          ),
          ListTile(
            leading: Radio(
              value: 'Biru',
              groupValue: pilihanWarna,
              onChanged: (String value) {
                setState(() {
                  pilihanWarna = value;
                  gantiWarna = Colors.blueAccent;
                });
              },
            ),
            title: Text('Biru'),
          ),
          ListTile(
            leading: Radio(
              value: 'Hijau',
              groupValue: pilihanWarna,
              onChanged: (String value) {
                setState(() {
                  pilihanWarna = value;
                  gantiWarna = Colors.greenAccent;
                });
              },
            ),
            title: Text('Hijau'),
          ),
          ListTile(
            leading: Checkbox(
              value: pilihanCheckbox,
              onChanged: (bool value) {
                setState(() {
                  pilihanCheckbox = value;
                  pilihanCheckbox == true
                      ? gantiWarna = Colors.black
                      : gantiWarna = Colors.grey;
                });
              },
            ),
            title: Text('Black/Grey'),
          ),
        ],
      ),
    );
  }
}
