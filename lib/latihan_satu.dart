import 'package:flutter/material.dart';
import 'icon_menu.dart';
import 'constants.dart';

class LatihanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Praktek 1 Pertemuan 3'),
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconMenu(
              namaMenu: 'Calls',
              warnaIconDanText: kWarnaDasarIcon,
              gambarIcon: Icons.call,
            ),
            IconMenu(
              namaMenu: 'Route',
              warnaIconDanText: kWarnaDasarIcon,
              gambarIcon: Icons.navigation,
            ),
            IconMenu(
              namaMenu: 'Share',
              warnaIconDanText: kWarnaDasarIcon,
              gambarIcon: Icons.share,
            ),
          ],
        ),
      ),
    );
  }
}

// class IconMenu extends StatelessWidget {
//   final IconData gambarIcon;
//   final String namaMenu;
//   final Color warnaIconDanText;
//   const IconMenu(
//       {Key key, this.gambarIcon, this.warnaIconDanText, this.namaMenu})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Icon(
//           gambarIcon,
//           color: Colors.lightBlue,
//         ),
//         Container(
//           child: Text(
//             namaMenu,
//             style: TextStyle(color: Colors.lightBlue),
//           ),
//         ),
//       ],
//     );
//   }
// }

//
// IconMenu(
// namaMenu: 'Calls',
// warnaIconDanText: kWarnaDasarIcon,
// gambarIcon: Icons.call,
// ),
// IconMenu(
// namaMenu: 'Route',
// warnaIconDanText: kWarnaDasarIcon,
// gambarIcon: Icons.navigation,
// ),
// IconMenu(
// namaMenu: 'Share',
// warnaIconDanText: kWarnaDasarIcon,
// gambarIcon: Icons.share,
// ),
