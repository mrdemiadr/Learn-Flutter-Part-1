import 'package:flutter/material.dart';

class IconMenu extends StatelessWidget {
  final IconData gambarIcon;
  final String namaMenu;
  final Color warnaIconDanText;
  const IconMenu(
      {Key key, this.gambarIcon, this.warnaIconDanText, this.namaMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          gambarIcon,
          color: Colors.lightBlue,
        ),
        Container(
          child: Text(
            namaMenu,
            style: TextStyle(color: Colors.lightBlue),
          ),
        ),
      ],
    );
  }
}
