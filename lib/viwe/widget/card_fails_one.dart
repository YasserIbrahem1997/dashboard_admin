import 'package:flutter/material.dart';

class Card_Files extends StatelessWidget {
  const Card_Files(
      {Key? key,
      this.color,
      required this.title,
      required this.icon,
      required this.desnum,
       })
      : super(key: key);
  final Color? color;
  final String title;
  final String icon;
  final String desnum;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,

    );
  }
}
